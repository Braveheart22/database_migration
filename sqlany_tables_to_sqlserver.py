import re
from pathlib import Path

INPUT_FILE = "ReloadTables.sql"
OUTPUT_FILE = "02_Tables_SQLServer.sql"

TARGET_DATABASE = "LoopLoc_SchemaOnly"

header = f"""-- Generated from SQL Anywhere dbunload ReloadTables.sql
-- Loop-Loc migration: Schema-only (tables + PK/unique) for SQL Server 2025
-- NOTE: Grants/users removed; foreign keys deferred.

SET NOCOUNT ON;
GO

USE {TARGET_DATABASE};
GO

IF DB_NAME() <> N'{TARGET_DATABASE}'
BEGIN
    THROW 51000, 'Wrong database selected. Aborting schema build.', 1;
END
GO

"""


def convert_statement(stmt: str) -> str:
    s = stmt.replace("\r\n", "\n")

    # Normalize object header schema: "anyschema"."Table" -> [dbo].[Table]
    s = re.sub(r'(?im)^(CREATE\s+TABLE)\s+"[^"]+"\."([^"]+)"', r"\1 [dbo].[\2]", s)
    s = re.sub(r'(?im)^(ALTER\s+TABLE)\s+"[^"]+"\."([^"]+)"', r"\1 [dbo].[\2]", s)
    s = re.sub(r'"DBA"\."([^"]+)"', r"[dbo].[\1]", s)

    # Quote identifiers with []
    s = re.sub(r'"([^"]+)"', r"[\1]", s)

    # Translate SQLA CURRENT defaults (do this before type replacements)
    s = re.sub(r"(?i)DEFAULT\s+current\s+time\b", r"DEFAULT (CONVERT(time(0), SYSDATETIME()))", s)
    s = re.sub(r"(?i)DEFAULT\s+current\s+date\b", r"DEFAULT (CONVERT(date, SYSDATETIME()))", s)
    s = re.sub(r"(?i)DEFAULT\s+current\s+timestamp\b", r"DEFAULT (SYSDATETIME())", s)
    s = re.sub(r"(?i)DEFAULT\s+current\s+datetime\b", r"DEFAULT (SYSDATETIME())", s)
    s = re.sub(r"(?i)DEFAULT\s+current\s+datetime2\s*\(\s*0\s*\)\b", r"DEFAULT (SYSDATETIME())", s)

    # Translate CURRENT USER (fit to column length when obvious)
    new_lines = []
    for line in s.split("\n"):
        if re.search(r"(?i)DEFAULT\s+current\s+user\b", line):
            m = re.search(r"(?i)\b(char|varchar|nchar|nvarchar)\s*\(\s*(\d+)\s*\)", line)
            if m:
                n = int(m.group(2))
                repl = f"DEFAULT (LEFT(ORIGINAL_LOGIN(), {n}))"
            else:
                repl = "DEFAULT (ORIGINAL_LOGIN())"
            line = re.sub(r"(?i)DEFAULT\s+current\s+user\b", repl, line)
        new_lines.append(line)
    s = "\n".join(new_lines)

    # Type translations (only where a type follows a column name bracket)
    s = re.sub(r"(?i)(\]\s*)unsigned\s+int\b", r"\1bigint", s)
    s = re.sub(r"(?i)(\]\s*)unsigned\s+smallint\b", r"\1int", s)
    s = re.sub(r"(?i)(\]\s*)integer\b", r"\1int", s)
    s = re.sub(r"(?i)(\]\s*)double\b", r"\1float", s)
    # SQLA TIMESTAMP != SQL Server TIMESTAMP/ROWVERSION
    s = re.sub(r"(?i)(\]\s*)timestamp\b", r"\1datetime2(0)", s)
    s = re.sub(r"(?i)(\]\s*)long\s+varchar\b", r"\1varchar(max)", s)
    s = re.sub(r"(?i)(\]\s*)long\s+binary\b", r"\1varbinary(max)", s)

    # Convert large fixed-width CHAR/NCHAR to variable-width to avoid 8060 fixed row limit
    def char_mapper(m: re.Match) -> str:
        prefix, typ, size = m.group(1), m.group(2).lower(), int(m.group(3))
        if size > 255:
            return f"{prefix}{'nvarchar' if typ == 'nchar' else 'varchar'}({size})"
        return f"{prefix}{typ}({size})"

    s = re.sub(r"(?i)(\]\s*)(nchar|char)\s*\(\s*(\d+)\s*\)", char_mapper, s)

    # AUTOINCREMENT -> IDENTITY(1,1) NOT NULL
    s = re.sub(
        r"(?i)\]\s*(bigint|int|smallint|tinyint)\s+(?:NULL|NOT NULL)\s+DEFAULT\s+autoincrement\b",
        lambda m: f"] {m.group(1)} IDENTITY(1,1) NOT NULL",
        s,
    )
    s = re.sub(
        r"(?i)\]\s*(bigint|int|smallint|tinyint)\s+DEFAULT\s+autoincrement\b",
        lambda m: f"] {m.group(1)} IDENTITY(1,1) NOT NULL",
        s,
    )
    # If SQLA had a weird FLOAT autoincrement, force to BIGINT identity so it compiles.
    s = re.sub(
        r"(?i)\]\s*float\s+(?:NULL|NOT NULL)\s+DEFAULT\s+autoincrement\b",
        r"] bigint IDENTITY(1,1) NOT NULL",
        s,
    )
    s = re.sub(
        r"(?i)\]\s*float\s+DEFAULT\s+autoincrement\b",
        r"] bigint IDENTITY(1,1) NOT NULL",
        s,
    )

    # Ensure schema is dbo even if something slipped through: [ralph].[X] -> [dbo].[X]
    s = re.sub(r"(?im)^(CREATE\s+TABLE)\s+\[[^\]]+\]\.\[", r"\1 [dbo].[", s)
    s = re.sub(r"(?im)^(ALTER\s+TABLE)\s+\[[^\]]+\]\.\[", r"\1 [dbo].[", s)

    # Trailing comma cleanup
    s = re.sub(r",\s*\n(\s*\))", r"\n\1", s)
    s = re.sub(r",\s*\)", r")", s)

    # Terminate statement
    if not s.strip().endswith(";"):
        s = s.rstrip() + "\n;"

    return s

def main() -> None:
    src = Path(INPUT_FILE).read_text(encoding="utf-8", errors="ignore").splitlines()

    # Skip PB catalog tables (they appear multiple times in your unload + often aren't part of business schema)
    SKIP_TABLES = {"pbcattbl", "pbcatcol", "pbcatfmt", "pbcatvld", "pbcatedt"}

    # Dedupe: if the same table appears multiple times in input, emit it only once
    emitted_tables = set()

    out_parts = []
    buf = []

    for line in src:
        if line.strip().lower() == "go":
            if buf:
                stmt = "\n".join(buf).strip("\n")
                up = stmt.strip().upper()

                if up.startswith(("CREATE TABLE", "ALTER TABLE")):
                    converted = convert_statement(stmt)

                    # If this is CREATE TABLE, extract the dbo table name for skip/dedupe logic
                    if converted.lstrip().upper().startswith("CREATE TABLE"):
                        m = re.search(r"(?i)CREATE\s+TABLE\s+\[dbo\]\.\[([^\]]+)\]", converted)
                        if m:
                            tbl = m.group(1).lower()

                            # Skip PB tables entirely
                            if tbl in SKIP_TABLES:
                                buf = []
                                continue

                            # Dedupe repeated CREATE TABLEs
                            if tbl in emitted_tables:
                                buf = []
                                continue

                            emitted_tables.add(tbl)

                    out_parts.append(converted)
                    out_parts.append("\nGO\n")

            buf = []
            continue

        if line.strip().upper().startswith(("GRANT", "SET OPTION")):
            continue

        if not buf and (line.strip().startswith("--") or line.strip() == ""):
            continue

        buf.append(line)

    final_sql = header + "".join(out_parts)
    Path(OUTPUT_FILE).write_text(final_sql, encoding="utf-8")
    print(f"Wrote {OUTPUT_FILE}")

if __name__ == "__main__":
    main()
# To Run:
# python sqlany_tables_to_sqlserver.py
