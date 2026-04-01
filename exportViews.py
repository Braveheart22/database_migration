"""
exportViews.py
--------------
Applies create_views.sql to SQL Server.
Skips views that already exist. Reports errors per view.
"""

import pyodbc
import re

dst = pyodbc.connect(
    'DRIVER={ODBC Driver 17 for SQL Server};'
    'SERVER=LOOP-DB01;'
    'DATABASE=Loop-Loc_v1;'
    'Trusted_Connection=yes;'
)

with open('create_views.sql', 'r', encoding='utf-8') as f:
    sql = f.read()

# Split on GO statements
batches = [b.strip() for b in re.split(r'^\s*GO\s*$', sql, flags=re.MULTILINE) if b.strip()]

# Filter to only CREATE VIEW batches
view_batches = [b for b in batches if re.search(r'\bCREATE\s+VIEW\b', b, re.IGNORECASE)]

cur = dst.cursor()
ok = 0
skipped = 0
failed = 0

for batch in view_batches:
    m = re.search(r'CREATE\s+VIEW\s+(\w+)', batch, re.IGNORECASE)
    view_name = m.group(1) if m else '(unknown)'

    # Check if already exists
    cur.execute("SELECT 1 FROM sys.objects WHERE type = 'V' AND name = ?", view_name)
    if cur.fetchone():
        print(f"  [SKIP]  {view_name} — already exists")
        skipped += 1
        continue

    try:
        cur.execute(batch)
        dst.commit()
        print(f"  [OK]    {view_name}")
        ok += 1
    except pyodbc.Error as e:
        dst.rollback()
        print(f"  [ERROR] {view_name}: {e}")
        failed += 1

print(f"\nDone. {ok} created, {skipped} skipped, {failed} failed.")
dst.close()
