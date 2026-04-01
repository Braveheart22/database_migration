"""
checkViewProgress.py
---------------------
Compares DBA-owned views in SQL Anywhere against what exists in SQL Server.

Output:
  - DONE   : view exists in MSSQL
  - PENDING: view exists in SQLA but not yet in MSSQL
  - Summary counts
"""

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
    'DRIVER={ODBC Driver 17 for SQL Server};'
    'SERVER=LOOP-DB01;'
    'DATABASE=Loop-Loc_v1;'
    'Trusted_Connection=yes;'
)

def get_sqla_views(conn):
    cur = conn.cursor()
    cur.execute("""
        SELECT t.table_name
        FROM SYS.SYSTABLE t
        JOIN SYS.SYSUSERPERM u ON t.creator = u.user_id
        WHERE u.user_name = 'DBA'
          AND t.table_type = 'VIEW'
        ORDER BY t.table_name
    """)
    return {row[0] for row in cur.fetchall()}

def get_mssql_views(conn):
    cur = conn.cursor()
    cur.execute("""
        SELECT name
        FROM sys.objects
        WHERE type = 'V'
          AND is_ms_shipped = 0
        ORDER BY name
    """)
    return {row[0] for row in cur.fetchall()}

sqla_views  = get_sqla_views(src)
mssql_views = get_mssql_views(dst)

src.close()
dst.close()

done    = sorted(sqla_views & mssql_views)
pending = sorted(sqla_views - mssql_views)
extra   = sorted(mssql_views - sqla_views)

print(f"SQLA views  : {len(sqla_views)}")
print(f"MSSQL views : {len(mssql_views)}")
print()

if done:
    print(f"-- DONE ({len(done)}) --")
    for name in done:
        print(f"  [x] {name}")
    print()

if pending:
    print(f"-- PENDING ({len(pending)}) --")
    for name in pending:
        print(f"  [ ] {name}")
    print()

if extra:
    print(f"-- EXTRA in MSSQL ({len(extra)}) --")
    for name in extra:
        print(f"      {name}")
    print()

pct = int(len(done) / len(sqla_views) * 100) if sqla_views else 0
print(f"Progress: {len(done)} / {len(sqla_views)} ({pct}%)")
