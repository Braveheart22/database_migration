import pyodbc

src = pyodbc.connect(
    'DRIVER={SQL Anywhere 17};'
    'HOST=192.168.250.34;'
    'SERVER=Emmitt;'
    'DATABASE=Smith;'
    'UID=dba;'
    'PWD=sql34;'
)

# --- Data type mapping: SQL Anywhere -> SQL Server ---
TYPE_MAP = {
    'integer':        'INT',
    'int':            'INT',
    'smallint':       'SMALLINT',
    'tinyint':        'TINYINT',
    'bigint':         'BIGINT',
    'numeric':        'NUMERIC',
    'decimal':        'DECIMAL',
    'float':          'FLOAT',
    'double':         'FLOAT',
    'real':           'REAL',
    'char':           'CHAR',
    'varchar':        'VARCHAR',
    'long varchar':   'VARCHAR(MAX)',
    'text':           'VARCHAR(MAX)',
    'binary':         'BINARY',
    'varbinary':      'VARBINARY',
    'long binary':    'VARBINARY(MAX)',
    'image':          'VARBINARY(MAX)',
    'date':           'DATE',
    'time':           'TIME',
    'datetime':       'DATETIME',
    'timestamp':      'DATETIME',
    'bit':            'BIT',
    'money':          'MONEY',
    'smallmoney':     'SMALLMONEY',
}

def map_type(domain_name, width, scale):
    dt    = domain_name.lower()
    mssql = TYPE_MAP.get(dt, domain_name.upper())

    if dt in ('varchar', 'char', 'binary', 'varbinary') and width:
        return f"{mssql}({width})"
    elif dt in ('numeric', 'decimal') and width:
        return f"{mssql}({width},{scale or 0})"

    return mssql

def get_tables(conn):
    cur = conn.cursor()
    cur.execute("""
        SELECT table_name
        FROM SYS.SYSTABLE
        WHERE table_type = 'BASE'
        ORDER BY table_name
    """)
    return [row[0] for row in cur.fetchall()]

def get_columns(conn, table_name):
    cur = conn.cursor()
    cur.execute("""
        SELECT
            c.column_name,
            c.column_id,
            d.domain_name,
            c.width,
            c.scale,
            c.nulls,
            c."default",
            c.pkey
        FROM SYS.SYSTABLE t
        JOIN SYS.SYSCOLUMN c ON t.table_id = c.table_id
        JOIN SYS.SYSDOMAIN d ON c.domain_id = d.domain_id
        WHERE t.table_name = ?
        AND t.table_type = 'BASE'
        ORDER BY c.column_id
    """, table_name)
    return cur.fetchall()

def generate_create_table(table_name, columns):
    col_defs = []
    pk_cols  = []

    for col in columns:
        col_name, col_id, domain_name, width, scale, nulls, default_val, pkey = col

        sql_type = map_type(domain_name, width, scale)

        if default_val and default_val.lower() == 'autoincrement':
            col_def = f"    [{col_name}] {sql_type} IDENTITY(1,1)"
        else:
            col_def = f"    [{col_name}] {sql_type}"

        col_def += " NOT NULL" if nulls == 'N' else " NULL"
        col_defs.append(col_def)

        if pkey == 'Y':
            pk_cols.append(f"[{col_name}]")

    if pk_cols:
        col_defs.append(f"    CONSTRAINT [PK_{table_name}] PRIMARY KEY ({', '.join(pk_cols)})")

    body = ",\n".join(col_defs)
    return f"CREATE TABLE [{table_name}] (\n{body}\n);\nGO\n"

# --- Generate the SQL file ---
tables = get_tables(src)
print(f"Found {len(tables)} tables. Generating DDL...")

with open("create_tables.sql", "w") as f:
    f.write("-- Generated CREATE TABLE scripts for SQL Server\n")
    f.write("-- Source: SQL Anywhere 9 (Smith)\n\n")

    for table_name in tables:
        columns = get_columns(src, table_name)
        ddl     = generate_create_table(table_name, columns)
        f.write(ddl + "\n")
        print(f"  {table_name} ({len(columns)} columns)")

print(f"\nDone. Output written to create_tables.sql")
src.close()