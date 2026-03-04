import pyodbc
import re

src = pyodbc.connect(
    'DRIVER={SQL Anywhere 17};'
    'HOST=192.168.250.34;'
    'SERVER=Emmitt;'
    'DATABASE=Smith;'
    'UID=dba;'
    'PWD=sql34;'
    # 'DRIVER={SQL Anywhere 17};'
    # 'DSN=Local9;'
    # 'UID=dba;'
    # 'PWD=sql34'
)

TRACKING_TABLE = 'proc_usage_log'

# ---------------------------------------------------------------------------
# Ensure the tracking table exists in SQLA
# ---------------------------------------------------------------------------
def ensure_tracking_table(conn):
    cur = conn.cursor()
    cur.execute(f"""
        IF NOT EXISTS (
            SELECT 1 FROM SYS.SYSTABLE t
            JOIN SYS.SYSUSERPERM u ON t.creator = u.user_id
            WHERE t.table_name = '{TRACKING_TABLE}'
              AND u.user_name = 'DBA'
        )
        CREATE TABLE {TRACKING_TABLE} (
            proc_name   VARCHAR(128)  NOT NULL PRIMARY KEY,
            used_count  INT           NOT NULL DEFAULT 0
        )
    """)
    conn.commit()
    print(f"Tracking table '{TRACKING_TABLE}' ready.\n")

# ---------------------------------------------------------------------------
# Load all DBA-owned procedures
# ---------------------------------------------------------------------------
def get_procedures(conn):
    cur = conn.cursor()
    cur.execute("""
        SELECT p.proc_name, p.proc_defn
        FROM SYS.SYSPROCEDURE p
        JOIN SYS.SYSUSERPERM u ON p.creator = u.user_id
        WHERE u.user_name = 'DBA'
        ORDER BY p.proc_name
    """)
    return cur.fetchall()

# ---------------------------------------------------------------------------
# Build the one-liner tracking statement to inject.
# Uses UPDATE + INSERT pattern that works in SQL Anywhere.
# ---------------------------------------------------------------------------
def tracking_stmt(proc_name):
    safe = proc_name.replace("'", "''")
    return (
        f"    -- [tracking]\n"
        f"    UPDATE {TRACKING_TABLE} SET used_count = used_count + 1 "
        f"WHERE proc_name = '{safe}';\n"
        f"    IF @@rowcount = 0 THEN\n"
        f"        INSERT INTO {TRACKING_TABLE} (proc_name, used_count) "
        f"VALUES ('{safe}', 1);\n"
        f"    END IF;\n"
        f"    -- [/tracking]\n"
    )

# ---------------------------------------------------------------------------
# Inject tracking into the procedure body and recreate it.
#
# SQL Anywhere procedure definition format:
#   CREATE PROCEDURE proc_name (...)
#   BEGIN
#     ...body...
#   END
#
# We find the first BEGIN (case-insensitive, as a whole word) that belongs to
# the outer procedure body and insert the tracking lines right after it.
# ---------------------------------------------------------------------------
def inject_tracking(proc_name, proc_defn):
    # Find the outer BEGIN
    begin_match = re.search(r'\bBEGIN\b', proc_defn, re.IGNORECASE)
    if not begin_match:
        return None, "no BEGIN found"

    # Walk forward past whitespace, comments, and DECLARE statements.
    # SQLA requires all DECLAREs to precede any executable statements,
    # so we must insert AFTER the last DECLARE — not immediately after BEGIN.
    pos = begin_match.end()
    ws_re   = re.compile(r'\s+')
    slc_re  = re.compile(r'(?:--|//)[^\n]*\n?')    # single-line comment (-- or //)
    bc_re   = re.compile(r'/\*.*?\*/', re.DOTALL)  # block comment
    # Match a DECLARE statement that may contain quoted strings with semicolons
    # inside them (e.g. cursor FOR SELECT WHERE col = 'val; ue').
    # Pattern: DECLARE + (non-special chars OR single-quoted strings) + unquoted ;
    decl_re = re.compile(
        r"DECLARE\b(?:[^;']|'(?:[^']|'')*')*;",
        re.IGNORECASE | re.DOTALL
    )

    while pos < len(proc_defn):
        m = (ws_re.match(proc_defn, pos) or
             slc_re.match(proc_defn, pos) or
             bc_re.match(proc_defn, pos) or
             decl_re.match(proc_defn, pos))
        if m:
            pos = m.end()
        else:
            break

    new_defn = (
        proc_defn[:pos]
        + "\n"
        + tracking_stmt(proc_name)
        + proc_defn[pos:]
    )

    # ALTER PROCEDURE is the correct way to modify an existing procedure in SQLA 9
    new_defn = re.sub(
        r'^CREATE\s+PROCEDURE\b',
        'ALTER PROCEDURE',
        new_defn,
        count=1,
        flags=re.IGNORECASE
    )
    return new_defn, None

# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------
ensure_tracking_table(src)

procedures = get_procedures(src)
print(f"Found {len(procedures)} DBA-owned procedure(s).\n")

updated = 0
skipped_fn = 0
skipped_err = 0
already_tracked = 0

cur = src.cursor()

for proc_name, proc_defn in procedures:
    if not proc_defn:
        print(f"  SKIP  {proc_name:<40} (no definition)")
        skipped_err += 1
        continue

    # Skip functions
    if re.match(r'^\s*CREATE\s+(OR\s+REPLACE\s+)?FUNCTION\b', proc_defn, re.IGNORECASE):
        print(f"  SKIP  {proc_name:<40} (function)")
        skipped_fn += 1
        continue

    # Skip if already injected in a previous run
    if '[tracking]' in proc_defn:
        print(f"  SKIP  {proc_name:<40} (already tracked)")
        already_tracked += 1
        continue

    new_defn, err = inject_tracking(proc_name, proc_defn)
    if err:
        print(f"  ERROR {proc_name:<40} ({err})")
        skipped_err += 1
        continue

    try:
        cur.execute(new_defn)
        src.commit()
        print(f"  OK    {proc_name}")
        updated += 1
    except Exception as e:
        src.rollback()
        print(f"  ERROR {proc_name:<40} {e}")
        skipped_err += 1

src.close()

print(f"""
Done.
  Updated  : {updated}
  Already tracked: {already_tracked}
  Skipped (functions): {skipped_fn}
  Errors   : {skipped_err}
""")
