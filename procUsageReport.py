"""
procUsageReport.py
-------------------
SOURCE: SQL Anywhere (proc_usage_log + SYS.SYSPROCEDURE)

PURPOSE:
    Uses one week of proc_usage_log data (collected by injected tracking
    statements) to prioritize the Phase 7 stored procedure migration.

    Joins all DBA-owned procedures against their usage counts and outputs:
      - USED     : called at least once, sorted by count descending
      - NEVER    : never called during the tracking period (review for obsolescence)
      - Summary  : totals and percentages

    Also writes a timestamped CSV for reference.

NOTE:
    Run this BEFORE removeTracking.py wipes the proc_usage_log data.
    Connects to SQL Anywhere only - no SQL Server connection needed.
"""

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

cur = src.cursor()

# ---------------------------------------------------------------------------
# Pull all DBA-owned procedures left-joined to usage counts
# ---------------------------------------------------------------------------
cur.execute("""
    SELECT
        p.proc_name,
        COALESCE(l.used_count, 0) AS used_count
    FROM SYS.SYSPROCEDURE p
    JOIN SYS.SYSUSERPERM u ON p.creator = u.user_id
    LEFT JOIN proc_usage_log l ON l.proc_name = p.proc_name
    WHERE u.user_name = 'DBA'
    ORDER BY COALESCE(l.used_count, 0) DESC, p.proc_name
""")

rows = cur.fetchall()
src.close()

used  = [(name, count) for name, count in rows if count > 0]
never = [(name, count) for name, count in rows if count == 0]

# ---------------------------------------------------------------------------
# Console output
# ---------------------------------------------------------------------------
print(f"Total DBA procedures : {len(rows)}")
print(f"Called during period : {len(used)}")
print(f"Never called         : {len(never)}")
print()

if used:
    print(f"-- USED ({len(used)}) -- sorted by call count, heaviest first")
    print(f"  {'Procedure':<50} {'Count':>8}")
    print(f"  {'-'*50} {'-'*8}")
    for name, count in used:
        print(f"  {name:<50} {count:>8,}")
    print()

if never:
    print(f"-- NEVER CALLED ({len(never)}) -- review for obsolescence")
    for name, _ in never:
        print(f"  {name}")
    print()

total_calls = sum(c for _, c in used)
print(f"Total tracked calls  : {total_calls:,}")

# ---------------------------------------------------------------------------
# CSV export
# ---------------------------------------------------------------------------
timestamp = datetime.now().strftime('%Y%m%d_%H%M%S')
csv_file = f'proc_usage_report_{timestamp}.csv'

with open(csv_file, 'w', newline='', encoding='utf-8') as f:
    writer = csv.writer(f)
    writer.writerow(['proc_name', 'used_count', 'status'])
    for name, count in rows:
        status = 'USED' if count > 0 else 'NEVER'
        writer.writerow([name, count, status])

print(f"\nReport written to: {csv_file}")
