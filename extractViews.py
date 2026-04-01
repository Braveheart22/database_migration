import pyodbc

src = pyodbc.connect(
    'DRIVER={SQL Anywhere 17};'
    'HOST=192.168.250.34;'
    'SERVER=Emmitt;'
    'DATABASE=Smith;'
    'UID=dba;'
    'PWD=sql34;'
)

def get_views(conn):
    cur = conn.cursor()
    cur.execute("""
        SELECT t.table_name, t.view_def
        FROM SYS.SYSTABLE t
        JOIN SYS.SYSUSERPERM u ON t.creator = u.user_id
        WHERE u.user_name = 'DBA'
          AND t.table_type = 'VIEW'
        ORDER BY t.table_name
    """)
    return cur.fetchall()

views = get_views(src)
print(f"Found {len(views)} view(s). Writing source file...\n")

with open('sqla_views_source.sql', 'w', encoding='utf-8') as f:
    f.write("-- =============================================================\n")
    f.write("-- SQL Anywhere view source definitions\n")
    f.write("-- Source: SQL Anywhere (Smith)\n")
    f.write("--\n")
    f.write("-- THIS FILE IS FOR REFERENCE ONLY\n")
    f.write("-- These are SQL Anywhere definitions and will NOT run in SQL Server\n")
    f.write("-- Use this as the source for converting views to T-SQL\n")
    f.write("--\n")
    f.write("-- Key syntax differences:\n")
    f.write("--   STRING(a, b)              --> CONCAT(a, b) or a + b\n")
    f.write("--   DATEFORMAT(d, fmt)        --> FORMAT(d, fmt) or CONVERT()\n")
    f.write("--   TODAY()                   --> CAST(GETDATE() AS DATE)\n")
    f.write("--   NOW()                     --> GETDATE()\n")
    f.write("--   MONTHS()                  --> DATEDIFF(MONTH, ...)\n")
    f.write("--   YEARS()                   --> DATEDIFF(YEAR, ...)\n")
    f.write("--   MOD(a, b)                 --> a % b\n")
    f.write("--   Backtick/double-quote ids --> [square brackets]\n")
    f.write("-- =============================================================\n\n")

    for table_name, view_def in views:
        f.write(f"-- {'='*60}\n")
        f.write(f"-- VIEW: {table_name}\n")
        f.write(f"-- {'='*60}\n")
        f.write(view_def or f"-- (no definition available for {table_name})")
        f.write("\nGO\n\n")
        print(f"  {table_name}")

print(f"\nDone. {len(views)} view(s) written to sqla_views_source.sql")
src.close()
