"""
removeTracking.py
------------------
Removes the usage tracking code injected by injectProcTracking.py from all
DBA-owned stored procedures in SQL Anywhere.

Safe to run at any time. Only modifies procedures that contain the
-- [tracking] ... -- [/tracking] marker block.
"""

import pyodbc
import re

src = pyodbc.connect(
    'DRIVER={SQL Anywhere 17};'
    'DSN=Local9;'
    'UID=dba;'
    'PWD=sql34'
)

# ---------------------------------------------------------------------------
# Load all DBA-owned procedures that contain tracking code
# ---------------------------------------------------------------------------
def get_tracked_procedures(conn):
    cur = conn.cursor()
    cur.execute("""
        SELECT p.proc_name, p.proc_defn
        FROM SYS.SYSPROCEDURE p
        JOIN SYS.SYSUSERPERM u ON p.creator = u.user_id
        WHERE u.user_name = 'DBA'
          AND p.proc_defn LIKE '%[tracking]%'
        ORDER BY p.proc_name
    """)
    return cur.fetchall()

# ---------------------------------------------------------------------------
# Strip the tracking block from a procedure definition
# ---------------------------------------------------------------------------
def remove_tracking(proc_defn):
    # Remove the entire -- [tracking] ... -- [/tracking] block.
    # Use \r?\n to handle both LF and CRLF line endings — SQL Anywhere
    # stores procedure definitions with CRLF which breaks a plain \n match.
    cleaned = re.sub(
        r'\r?\n[ \t]*-- \[tracking\].*?-- \[/tracking\]\r?\n',
        '\n',
        proc_defn,
        flags=re.DOTALL
    )
    # Rewrite as ALTER PROCEDURE regardless of whether proc_defn currently
    # starts with CREATE or ALTER. Use \s* to handle any leading whitespace.
    cleaned = re.sub(
        r'^\s*(CREATE|ALTER)\s+PROCEDURE\b',
        'ALTER PROCEDURE',
        cleaned,
        count=1,
        flags=re.IGNORECASE
    )
    return cleaned

# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------
procedures = get_tracked_procedures(src)
print(f"Found {len(procedures)} procedure(s) with tracking code.\n")

removed = 0
errors  = 0
cur = src.cursor()

for proc_name, proc_defn in procedures:
    # The LIKE query uses [tracking] as a character class in SQLA and returns
    # more rows than expected. Skip anything without the literal marker.
    if not proc_defn or '[tracking]' not in proc_defn:
        continue

    new_defn = remove_tracking(proc_defn)

    # Sanity check — make sure the marker is actually gone
    if '[tracking]' in new_defn:
        print(f"  ERROR {proc_name:<40} (marker still present after strip)")
        errors += 1
        continue

    try:
        cur.execute(new_defn)
        src.commit()
        print(f"  OK    {proc_name}")
        removed += 1
    except Exception as e:
        src.rollback()
        print(f"  ERROR {proc_name:<40} {e}")
        errors += 1

src.close()

print(f"""
Done.
  Tracking removed : {removed}
  Errors           : {errors}
""")
