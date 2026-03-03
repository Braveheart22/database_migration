import csv
import pyodbc
from datetime import datetime

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

def get_mssql_table_names(conn):
    cur = conn.cursor()
    cur.execute("SELECT name FROM sys.tables")
    return {row[0].lower() for row in cur.fetchall()}

def get_sqla_count(conn, table_name):
    cur = conn.cursor()
    cur.execute(f"SELECT COUNT(*) FROM {table_name}")
    return cur.fetchone()[0]

def get_mssql_count(conn, table_name):
    cur = conn.cursor()
    cur.execute(f"SELECT COUNT(*) FROM [dbo].[{table_name}]")
    return cur.fetchone()[0]

# --- Main ---
sqla_tables       = get_sqla_tables(src)
mssql_table_names = get_mssql_table_names(dst)

matches    = 0
mismatches = []
missing    = []

log_filename = f"validation_log_{datetime.now().strftime('%Y%m%d_%H%M%S')}.csv"
print(f"Validating {len(sqla_tables)} tables...\n")

with open(log_filename, 'w', newline='') as log_file:
    writer = csv.writer(log_file)
    writer.writerow(['Table', 'SQLA_Rows', 'MSSQL_Rows', 'Status'])

    for table_name in sqla_tables:
        sqla_count = get_sqla_count(src, table_name)

        if table_name.lower() not in mssql_table_names:
            print(f"  MISSING  {table_name}  (SQLA: {sqla_count:,} rows)")
            missing.append(table_name)
            writer.writerow([table_name, sqla_count, '', 'MISSING'])
        else:
            mssql_count = get_mssql_count(dst, table_name)
            if sqla_count == mssql_count:
                print(f"  OK       {table_name}  ({sqla_count:,} rows)")
                matches += 1
                writer.writerow([table_name, sqla_count, mssql_count, 'MATCH'])
            else:
                diff = mssql_count - sqla_count
                print(f"  MISMATCH {table_name}  (SQLA: {sqla_count:,}, MSSQL: {mssql_count:,}, diff: {diff:+,})")
                mismatches.append((table_name, sqla_count, mssql_count))
                writer.writerow([table_name, sqla_count, mssql_count, 'MISMATCH'])

        log_file.flush()

print(f"\n{'='*50}")
print(f"Validation complete.")
print(f"Tables checked  : {len(sqla_tables)}")
print(f"Match           : {matches}")
print(f"Mismatch        : {len(mismatches)}")
print(f"Missing         : {len(missing)}")
print(f"Log file        : {log_filename}")

if mismatches:
    print(f"\nMismatched tables:")
    for t, s, m in mismatches:
        print(f"  {t}  (SQLA: {s:,}, MSSQL: {m:,})")

if missing:
    print(f"\nMissing tables (in SQLA but not in MSSQL):")
    for t in missing:
        print(f"  {t}")

if not mismatches and not missing:
    print(f"\nAll tables match. Safe to proceed to Phase 4.")

src.close()
dst.close()
