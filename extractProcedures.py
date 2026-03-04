import pyodbc

src = pyodbc.connect(
    'DRIVER={SQL Anywhere 17};'
    'HOST=192.168.250.34;'
    'SERVER=Emmitt;'
    'DATABASE=Smith;'
    'UID=dba;'
    'PWD=sql34;'
)

def get_procedures(conn):
    cur = conn.cursor()
    cur.execute("""
        SELECT p.proc_name, p.proc_defn
        FROM SYS.SYSPROCEDURE p
        JOIN SYS.SYSUSERPERM u ON p.creator = u.user_id
        WHERE u.user_name = 'DBA'
        ORDER BY p.proc_name
    """)
    return cur.fetchall()

procedures = get_procedures(src)
print(f"Found {len(procedures)} procedure(s). Writing source file...\n")

with open('sqla_procedures_source.sql', 'w', encoding='utf-8') as f:
    f.write("-- =============================================================\n")
    f.write("-- SQL Anywhere stored procedure source definitions\n")
    f.write("-- Source: SQL Anywhere (Smith)\n")
    f.write("-- \n")
    f.write("-- THIS FILE IS FOR REFERENCE ONLY\n")
    f.write("-- These are SQL Anywhere definitions and will NOT run in SQL Server\n")
    f.write("-- Use this as the source for converting procedures to T-SQL\n")
    f.write("-- =============================================================\n\n")

    for proc_name, proc_defn in procedures:
        f.write(f"-- {'='*60}\n")
        f.write(f"-- PROCEDURE: {proc_name}\n")
        f.write(f"-- {'='*60}\n")
        f.write(proc_defn or f"-- (no definition available for {proc_name})")
        f.write("\nGO\n\n")
        print(f"  {proc_name}")

print(f"\nDone. {len(procedures)} procedure(s) written to sqla_procedures_source.sql")
src.close()
