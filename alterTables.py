import pyodbc

src = pyodbc.connect(
    'DRIVER={SQL Anywhere 17};'
    'HOST=192.168.250.34;'
    'SERVER=Emmitt;'
    'DATABASE=Smith;'
    'UID=dba;'
    'PWD=sql34;'
)

dst = pyodbc.connect(
    'DRIVER={ODBC Driver 18 for SQL Server};'
    'SERVER=Loop-DB01;'
    'DATABASE=Loop-Loc_v1;'
    'Trusted_Connection=yes;'
    'TrustServerCertificate=yes;'
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
    'unsigned smallint': 'INT',
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
        return mssql

    if dt in ('varchar', 'char', 'binary', 'varbinary') and length:
        if length == -1 or length >= 8000:
            return f"{mssql}(MAX)"
        # CHAR(n) > 255 -> VARCHAR(n): avoids SQL Server 8060-byte fixed row size limit
        if dt == 'char' and length > 255:
            return f"VARCHAR({length})"
        return f"{mssql}({length})"

    if dt in ('numeric', 'decimal') and length:
        return f"{mssql}({length},{scale or 0})"

    return mssql

# --- Get all DBA-owned base tables from SQL Anywhere ---
def get_sqla_tables(conn):
    cur = conn.cursor()
    cur.execute("""
        SELECT t.table_name
        FROM SYS.SYSTABLE t
        JOIN SYS.SYSUSERPERM u ON t.creator = u.user_id
        WHERE t.table_type = 'BASE'
        AND u.user_name = 'DBA'
        ORDER BY t.table_name
    """)
    all_tables = [row[0] for row in cur.fetchall()]
    return [t for t in all_tables if t.lower() not in
            {e.lower() for e in EXCLUDE_TABLES}]

# --- Get all table names from SQL Server ---
def get_mssql_tables(conn):
    cur = conn.cursor()
    cur.execute("SELECT name FROM sys.tables ORDER BY name")
    return {row[0].lower(): row[0] for row in cur.fetchall()}

# --- Get full column metadata for a table from SQL Anywhere ---
def get_sqla_columns(conn, table_name):
    cur = conn.cursor()
    rows = cur.columns(table=table_name)
    return sorted(rows, key=lambda r: r.ordinal_position)

# --- Get column names for a table from SQL Server ---
def get_mssql_column_names(conn, table_name):
    cur = conn.cursor()
    cur.execute("""
        SELECT c.name
        FROM sys.columns c
        JOIN sys.tables t ON c.object_id = t.object_id
        WHERE t.name = ?
    """, table_name)
    return {row[0].lower() for row in cur.fetchall()}

# --- Generate ALTER TABLE statement for a single missing column ---
def generate_alter(table_name, col):
    if col.column_def and 'autoincrement' in col.column_def.lower():
        return (
            f"-- WARNING: [{col.column_name}] is AUTOINCREMENT in SQL Anywhere"
            f" -- added as INT, verify manually\n"
            f"ALTER TABLE [{table_name}] ADD [{col.column_name}] INT NOT NULL;\nGO\n"
        )

    sql_type = map_type(col.type_name, col.column_size, col.decimal_digits)
    nullable = 'NULL' if col.nullable else 'NOT NULL'
    return f"ALTER TABLE [{table_name}] ADD [{col.column_name}] {sql_type} {nullable};\nGO\n"

# --- Main ---
sqla_tables  = get_sqla_tables(src)
mssql_tables = get_mssql_tables(dst)

total_tables  = 0
total_columns = 0

print("Scanning for schema drift...\n")

with open('alter_tables.sql', 'w') as f:
    f.write("-- Generated ALTER TABLE scripts for SQL Server\n")
    f.write("-- Adds columns present in SQL Anywhere but missing in SQL Server\n\n")

    for table_name in sqla_tables:
        if table_name.lower() not in mssql_tables:
            continue  # MISSING table - needs full CREATE TABLE, not ALTER

        sqla_cols       = get_sqla_columns(src, table_name)
        mssql_col_names = get_mssql_column_names(dst, table_name)

        missing = [col for col in sqla_cols
                   if col.column_name.lower() not in mssql_col_names]

        if not missing:
            continue

        total_tables  += 1
        total_columns += len(missing)

        f.write(f"-- {table_name}: {len(missing)} missing column(s)\n")
        for col in missing:
            stmt = generate_alter(table_name, col)
            f.write(stmt)
            print(f"  {table_name}.{col.column_name}")
        f.write("\n")

if total_columns == 0:
    print("No missing columns found. Schema is in sync.")
else:
    print(f"\nDone. {total_columns} column(s) across {total_tables} table(s) written to alter_tables.sql")

src.close()
dst.close()
