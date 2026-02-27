import pyodbc

src = pyodbc.connect(                                                                                                                                                                                                 'DRIVER={SQL Anywhere 17};'
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
    'unsigned int':   'INT',
    'unsigned smallint': 'INT',   # INT not SMALLINT - signed SMALLINT max is 32767                                                                                            # which could overflow unsigned SMALLINT values up to 65535                                                 
}

# --- Tables to exclude (SQL Anywhere internals, not business data) ---
EXCLUDE_TABLES = {
    'pbcatcol', 'pbcatedt', 'pbcatfmt', 'pbcattbl', 'pbcatvld',
    'ix_consultant_affected_columns', 'ix_consultant_capture',
    'ix_consultant_index', 'ix_consultant_ixcol', 'ix_consultant_log',
    'ix_consultant_master', 'ix_consultant_query_index',
    'ix_consultant_query_phase', 'ix_consultant_query_text',
    'ix_consultant_workload', 'jdbc_function_escapes',
    'ml_connection_script', 'ml_device', 'ml_device_address',
    'ml_listening', 'ml_property', 'ml_qa_delivery',
    'ml_qa_global_props', 'ml_qa_notifications', 'ml_qa_repository',
    'ml_qa_repository_props', 'ml_qa_repository_staging',
    'ml_qa_status_history', 'ml_qa_status_staging', 'ml_script',
    'ml_script_version', 'ml_scripts_modified', 'ml_subscription',
    'ml_table', 'ml_table_script', 'ml_user',
    'rs_lastcommit', 'rs_threads',
    'RowGenerator', 'DUMMY',
}

def map_type(data_type, length, scale):
    dt    = data_type.lower()
    mssql = TYPE_MAP.get(dt, data_type.upper())

    if dt in ('long varchar', 'text', 'long binary', 'image'):
        return mssql  # Already mapped to MAX types in TYPE_MAP

    if dt in ('varchar', 'char', 'binary', 'varbinary') and length:
        if length == -1 or length >= 8000:
            return f"{mssql}(MAX)"
        return f"{mssql}({length})"

    if dt in ('numeric', 'decimal') and length:
        return f"{mssql}({length},{scale or 0})"

    return mssql

def get_tables(conn):
    cur = conn.cursor()
    cur.execute("""
        SELECT t.table_name
        FROM SYS.SYSTABLE t
        JOIN SYS.SYSUSERPERM u ON t.creator = u.user_id
        WHERE t.table_type = 'BASE'
        AND u.user_name = 'DBA'
        ORDER BY t.table_name
    """)
    return [row[0] for row in cur.fetchall()]

def get_columns(conn, table_name):
    cur = conn.cursor()
    rows = cur.columns(table=table_name)
    return sorted(rows, key=lambda r: r.ordinal_position)

def get_primary_keys(conn, table_name):
    cur = conn.cursor()
    cur.execute("""
        SELECT c.column_name
        FROM SYS.SYSTABLE t
        JOIN SYS.SYSCOLUMN c ON t.table_id = c.table_id
        WHERE t.table_name = ?
        AND t.table_type = 'BASE'
        AND c.pkey = 'Y'
        ORDER BY c.column_id
    """, table_name)
    return [row[0] for row in cur.fetchall()]

def generate_create_table(table_name, columns, pk_cols):
    col_defs = []

    for col in columns:
        sql_type = map_type(col.type_name, col.column_size, col.decimal_digits)

        if col.column_def and 'autoincrement' in col.column_def.lower():
            col_line = f"    [{col.column_name}] INT IDENTITY(1,1) NOT NULL"  # Always NOT NULL
        else:
            col_line = f"    [{col.column_name}] {sql_type}"
            col_line += " NOT NULL" if col.nullable == 0 else " NULL"
        col_defs.append(col_line)

    if pk_cols:
        pk_list = ', '.join(f"[{c}]" for c in pk_cols)
        col_defs.append(f"    CONSTRAINT [PK_{table_name}] PRIMARY KEY ({pk_list})")

    body = ",\n".join(col_defs)
    return f"CREATE TABLE [{table_name}] (\n{body}\n);\nGO\n"

# --- Generate the SQL file ---
all_tables = get_tables(src)
tables     = [t for t in all_tables if t.lower() not in
            {e.lower() for e in EXCLUDE_TABLES}]

print(f"Found {len(all_tables)} tables, {len(tables)} after exclusions. Generating DDL...")

with open("create_tables.sql", "w") as f:
    f.write("-- Generated CREATE TABLE scripts for SQL Server\n")
    f.write("-- Source: SQL Anywhere 9 (Smith)\n\n")

    for table_name in tables:
        columns  = get_columns(src, table_name)
        pk_cols  = get_primary_keys(src, table_name)
        ddl      = generate_create_table(table_name, columns, pk_cols)
        f.write(ddl + "\n")
        print(f"  {table_name} ({len(columns)} columns)")

print(f"\nDone. Output written to create_tables.sql")
src.close()