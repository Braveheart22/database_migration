"""
checkProcedureProgress.py
--------------------------
Compares DBA-owned stored procedures in SQL Anywhere against what has been
created in SQL Server so far.

Output:
  - DONE   : procedure exists in MSSQL
  - PENDING: procedure exists in SQLA but not yet in MSSQL
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
    'SERVER=LOOP-SQL2025;'
    'DATABASE=Loop-Loc_v1;'
    'Trusted_Connection=yes;'
)

# ---------------------------------------------------------------------------
# Load procedure names from each side
# ---------------------------------------------------------------------------
def get_sqla_procedures(conn):
    cur = conn.cursor()
    cur.execute("""
        SELECT p.proc_name
        FROM SYS.SYSPROCEDURE p
        JOIN SYS.SYSUSERPERM u ON p.creator = u.user_id
        WHERE u.user_name = 'DBA'
        ORDER BY p.proc_name
    """)
    return {row[0] for row in cur.fetchall()}

def get_mssql_procedures(conn):
    cur = conn.cursor()
    cur.execute("""
        SELECT name
        FROM sys.objects
        WHERE type = 'P'
          AND is_ms_shipped = 0
        ORDER BY name
    """)
    return {row[0] for row in cur.fetchall()}

sqla_procs  = get_sqla_procedures(src)
mssql_procs = get_mssql_procedures(dst)

src.close()
dst.close()

# ---------------------------------------------------------------------------
# Report
# ---------------------------------------------------------------------------
done    = sorted(sqla_procs & mssql_procs)
pending = sorted(sqla_procs - mssql_procs)
extra   = sorted(mssql_procs - sqla_procs)

print(f"SQLA procedures  : {len(sqla_procs)}")
print(f"MSSQL procedures : {len(mssql_procs)}")
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
    print(f"-- EXTRA in MSSQL (not in SQLA) ({len(extra)}) --")
    for name in extra:
        print(f"      {name}")
    print()

pct = int(len(done) / len(sqla_procs) * 100) if sqla_procs else 0
print(f"Progress: {len(done)} / {len(sqla_procs)} ({pct}%)")
