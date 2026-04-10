"""
addDBAPrefix.py
---------------
Updates DataWindow retrieve= SQL blocks in PowerBuilder .srd source files
to prefix user-defined function calls with DBA.

DBA.functionname() resolves correctly on both:
  - SQLA   : functions are owned by the DBA user
  - MSSQL  : DBA schema synonyms exist pointing to dbo functions

Fetches the function list dynamically from the DBA schema synonyms in SQL
Server, so no hardcoded list is needed — add a synonym, re-run the script.

Handles three cases:
  functionname(        ->  DBA.functionname(
  dbo.functionname(    ->  DBA.functionname(
  DBA.functionname(    ->  left alone

Usage:
  python addDBAPrefix.py                # process all .srd files in llPrep/
  python addDBAPrefix.py <filepath>     # process a single file
"""

import re
import os
import sys
import pyodbc

SCAN_DIR = os.path.join(os.path.dirname(__file__), 'llPrep')

def get_dba_synonyms():
    conn = pyodbc.connect(
        'DRIVER={ODBC Driver 17 for SQL Server};'
        'SERVER=LOOP-DB01;'
        'DATABASE=Loop-Loc_v1;'
        'Trusted_Connection=yes;'
    )
    cur = conn.cursor()
    cur.execute("""
        SELECT name FROM sys.synonyms
        WHERE SCHEMA_NAME(schema_id) = 'DBA'
        ORDER BY name
    """)
    names = [row[0] for row in cur.fetchall()]
    conn.close()
    return names

def prefix_functions(sql, functions):
    for func in functions:
        # Replace dbo.func( -> DBA.func(
        sql = re.sub(
            r'(?i)dbo\.' + re.escape(func) + r'\s*\(',
            'DBA.' + func + '(',
            sql
        )
        # Replace unqualified func( (not preceded by a dot) -> DBA.func(
        sql = re.sub(
            r'(?i)(?<!\.)\b' + re.escape(func) + r'\s*\(',
            'DBA.' + func + '(',
            sql
        )
    return sql

def process_file(filepath, functions):
    print(f"Reading: {filepath}")

    with open(filepath, 'r', encoding='utf-16', errors='replace') as f:
        content = f.read()

    retrieve_pattern = re.compile(
        r'(retrieve=")(.*?)(?<!~)(")',
        re.DOTALL | re.IGNORECASE
    )

    matches = list(retrieve_pattern.finditer(content))
    if not matches:
        print("  No retrieve block found, skipping.")
        return

    offset = 0
    new_content = content
    total_changes = 0

    for i, match in enumerate(matches):
        start = match.start(2) + offset
        end   = match.end(2)   + offset
        original_sql = new_content[start:end]
        transformed  = prefix_functions(original_sql, functions)

        changes = sum(1 for a, b in zip(
            original_sql.split('\n'), transformed.split('\n')) if a != b)
        total_changes += changes
        if changes:
            print(f"  Block {i+1}: {changes} line(s) changed")

        new_content = new_content[:start] + transformed + new_content[end:]
        offset += len(transformed) - len(original_sql)

    if total_changes == 0:
        print("  No changes needed.")
        return

    backup = filepath + '.bak'
    with open(backup, 'w', encoding='utf-16') as f:
        f.write(content)
    print(f"  Backup: {backup}")

    with open(filepath, 'w', encoding='utf-16') as f:
        f.write(new_content)
    print(f"  Done.   {filepath}")

if __name__ == '__main__':
    print("Fetching DBA synonyms from SQL Server...")
    functions = get_dba_synonyms()
    print(f"Found {len(functions)} synonym(s).")
    print()

    if len(sys.argv) >= 2:
        process_file(sys.argv[1], functions)
    else:
        files = [f for f in sorted(os.listdir(SCAN_DIR))
                 if f.lower().endswith('.srd')]
        print(f"Processing {len(files)} .srd file(s) in {SCAN_DIR}")
        print()
        for fname in files:
            process_file(os.path.join(SCAN_DIR, fname), functions)
