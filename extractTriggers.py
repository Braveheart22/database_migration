import pyodbc

src = pyodbc.connect(
    'DRIVER={SQL Anywhere 17};'
    'HOST=192.168.250.34;'
    'SERVER=Emmitt;'
    'DATABASE=Smith;'
    'UID=dba;'
    'PWD=sql34;'
)

TRIGGER_TIME = {'A': 'AFTER', 'B': 'BEFORE'}
TRIGGER_EVENT = {'I': 'INSERT', 'C': 'UPDATE', 'U': 'UPDATE', 'D': 'DELETE'}

def get_triggers(conn):
    cur = conn.cursor()
    cur.execute("""
        SELECT t.trigger_name, tab.table_name, t.trigger_time, t.event, t.trigger_defn
        FROM SYS.SYSTRIGGER t
        JOIN SYS.SYSTABLE tab ON t.table_id = tab.table_id
        JOIN SYS.SYSUSERPERM u ON tab.creator = u.user_id
        WHERE u.user_name = 'DBA'
        ORDER BY tab.table_name, t.trigger_name
    """)
    return cur.fetchall()

triggers = get_triggers(src)
print(f"Found {len(triggers)} trigger(s). Writing source file...\n")

with open('sqla_triggers_source.sql', 'w', encoding='utf-8') as f:
    f.write("-- =============================================================\n")
    f.write("-- SQL Anywhere trigger source definitions\n")
    f.write("-- Source: SQL Anywhere (Smith)\n")
    f.write("--\n")
    f.write("-- THIS FILE IS FOR REFERENCE ONLY\n")
    f.write("-- These are SQL Anywhere definitions and will NOT run in SQL Server\n")
    f.write("-- Use this as the source for converting triggers to T-SQL\n")
    f.write("--\n")
    f.write("-- Key syntax differences:\n")
    f.write("--   BEFORE trigger          --> INSTEAD OF trigger\n")
    f.write("--   AFTER trigger           --> AFTER trigger\n")
    f.write("--   REFERENCING OLD/NEW     --> deleted / inserted virtual tables\n")
    f.write("--   old.column_name         --> deleted.column_name\n")
    f.write("--   new.column_name         --> inserted.column_name\n")
    f.write("--   FOR EACH ROW            --> (remove - SQL Server triggers are set-based)\n")
    f.write("-- =============================================================\n\n")

    for trigger_name, table_name, trigger_time, event, trigger_defn in triggers:
        time_label  = TRIGGER_TIME.get(trigger_time, trigger_time)
        event_label = TRIGGER_EVENT.get(event, event)
        name_label  = trigger_name or '(unnamed)'

        f.write(f"-- {'='*60}\n")
        f.write(f"-- TRIGGER : {name_label}\n")
        f.write(f"-- TABLE   : {table_name}\n")
        f.write(f"-- TIMING  : {time_label}\n")
        f.write(f"-- EVENT   : {event_label}\n")
        if trigger_time == 'B':
            f.write(f"-- WARNING : BEFORE trigger — use INSTEAD OF in SQL Server\n")
        f.write(f"-- {'='*60}\n")
        f.write(trigger_defn or f"-- (no definition available for {name_label})")
        f.write("\nGO\n\n")
        print(f"  {name_label:<45} {table_name} {time_label}/{event_label}")

print(f"\nDone. {len(triggers)} trigger(s) written to sqla_triggers_source.sql")
src.close()
