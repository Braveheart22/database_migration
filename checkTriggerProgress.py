"""
checkTriggerProgress.py
------------------------
Compares DBA-owned triggers in SQL Anywhere against what has been
created in SQL Server so far.

Output:
  - DONE   : trigger exists in MSSQL
  - PENDING: trigger exists in SQLA but not yet in MSSQL
  - Summary counts and % complete
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
    'SERVER=Loop-DB01;'
    'DATABASE=Loop-Loc_v1;'
    'Trusted_Connection=yes;'
)

def get_sqla_triggers(conn):
    cur = conn.cursor()
    cur.execute("""
        SELECT t.trigger_name, tab.table_name, t.trigger_time, t.event
        FROM SYS.SYSTRIGGER t
        JOIN SYS.SYSTABLE tab ON t.table_id = tab.table_id
        JOIN SYS.SYSUSERPERM u ON tab.creator = u.user_id
        WHERE u.user_name = 'DBA'
          AND t.trigger_name IS NOT NULL
          AND t.trigger_name <> ''
        ORDER BY tab.table_name, t.trigger_name
    """)
    return cur.fetchall()

def get_mssql_triggers(conn):
    cur = conn.cursor()
    cur.execute("""
        SELECT name
        FROM sys.triggers
        WHERE is_ms_shipped = 0
        ORDER BY name
    """)
    return {row[0] for row in cur.fetchall()}

TRIGGER_TIME  = {'A': 'AFTER', 'B': 'BEFORE'}
TRIGGER_EVENT = {'I': 'INSERT', 'C': 'UPDATE', 'U': 'UPDATE', 'D': 'DELETE'}

sqla_triggers  = get_sqla_triggers(src)
mssql_triggers = get_mssql_triggers(dst)

src.close()
dst.close()

sqla_names = {row[0] for row in sqla_triggers}
done       = sorted(sqla_names & mssql_triggers)
pending    = [row for row in sqla_triggers if row[0] not in mssql_triggers]
extra      = sorted(mssql_triggers - sqla_names)

print(f"SQLA triggers  : {len(sqla_triggers)}")
print(f"MSSQL triggers : {len(mssql_triggers)}")
print()

if done:
    print(f"-- DONE ({len(done)}) --")
    for name in done:
        print(f"  [x] {name}")
    print()

if pending:
    print(f"-- PENDING ({len(pending)}) --")
    for trigger_name, table_name, trigger_time, event in pending:
        time_label  = TRIGGER_TIME.get(trigger_time, trigger_time)
        event_label = TRIGGER_EVENT.get(event, event)
        before_warn = "  *** BEFORE trigger - use INSTEAD OF ***" if trigger_time == 'B' else ""
        print(f"  [ ] {trigger_name:<45} {table_name} {time_label}/{event_label}{before_warn}")
    print()

if extra:
    print(f"-- EXTRA in MSSQL (not in SQLA) ({len(extra)}) --")
    for name in extra:
        print(f"      {name}")
    print()

pct = int(len(done) / len(sqla_triggers) * 100) if sqla_triggers else 0
print(f"Progress: {len(done)} / {len(sqla_triggers)} ({pct}%)")
