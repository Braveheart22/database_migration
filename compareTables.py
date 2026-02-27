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
    'DATABASE=LoopLoc_SchemaOnly;'
    'Trusted_Connection=yes;'
    'TrustServerCertificate=yes;'
)

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

# --- Get tables and column counts from SQL Anywhere ---
def get_sqla_tables(conn):
    cur = conn.cursor()
    cur.execute("""
        SELECT t.table_name, COUNT(c.column_id) AS col_count
        FROM SYS.SYSTABLE t
        JOIN SYS.SYSUSERPERM u ON t.creator = u.user_id
        JOIN SYS.SYSCOLUMN c   ON t.table_id = c.table_id
        WHERE t.table_type = 'BASE'
        AND u.user_name = 'DBA'
        GROUP BY t.table_name
        ORDER BY t.table_name
    """)
    return {row[0]: row[1] for row in cur.fetchall()}

# --- Get tables and column counts from SQL Server ---
def get_mssql_tables(conn):
    cur = conn.cursor()
    cur.execute("""
        SELECT t.name, COUNT(c.column_id) AS col_count
        FROM sys.tables t
        JOIN sys.columns c ON t.object_id = c.object_id
        GROUP BY t.name
        ORDER BY t.name
    """)
    return {row[0]: row[1] for row in cur.fetchall()}

sqla  = get_sqla_tables(src)
mssql = get_mssql_tables(dst)

# Filter out excluded tables
sqla = {k: v for k, v in sqla.items()
        if k.lower() not in {e.lower() for e in EXCLUDE_TABLES}}

sqla_names  = {k.lower(): k for k in sqla}
mssql_names = {k.lower(): k for k in mssql}

only_in_sqla  = [sqla_names[k]  for k in sqla_names  if k not in mssql_names]
only_in_mssql = [mssql_names[k] for k in mssql_names if k not in sqla_names]
col_mismatch  = [
    sqla_names[k] for k in sqla_names
    if k in mssql_names
    and sqla[sqla_names[k]] != mssql[mssql_names[k]]
]

print(f"\n--- Tables in SQL Anywhere but NOT in SQL Server ({len(only_in_sqla)}) ---")
for t in sorted(only_in_sqla):
    print(f"  MISSING: {t}  ({sqla[t]} columns in SQLA)")

print(f"\n--- Tables in SQL Server but NOT in SQL Anywhere ({len(only_in_mssql)}) ---")
for t in sorted(only_in_mssql):
    print(f"  EXTRA:   {t}  ({mssql[t]} columns in MSSQL)")

print(f"\n--- Tables with different column counts ({len(col_mismatch)}) ---")
for t in sorted(col_mismatch):
    sqla_key  = t
    mssql_key = mssql_names[t.lower()]
    print(f"  DRIFT:   {t}  (SQLA: {sqla[sqla_key]} cols, MSSQL: {mssql[mssql_key]} cols)")

print(f"\nDone.")