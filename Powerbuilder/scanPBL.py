"""
scanPBL.py
----------
Scans exported PowerBuilder source files for SQL syntax that is incompatible
with SQL Server (T-SQL).

Only flags issues found within SQL contexts:
  - DataWindow retrieve="..." blocks  (.srd files)
  - Embedded SQL: SELECT/INSERT/UPDATE/DELETE/EXECUTE statements in PowerScript

Note: STRING(), TODAY(), NOW(), TRIM(), MOD() etc. are also PowerBuilder
built-in functions used in PowerScript and computed expressions — those are
client-side and irrelevant to SQL Server. This scanner only reports them
when they appear in SQL contexts.

Targets: .srd, .srw, .srf, .sru, .srs files
"""

import os
import re
from collections import defaultdict

SCAN_DIR = os.path.join(os.path.dirname(__file__), 'llPrep')

# SQL-only incompatibilities (label, regex)
PATTERNS = [
    ('length()',        r'\blength\s*\('),
    ('TODAY()',         r'\btoday\s*\(\s*\)'),
    ('NOW()',           r'\bnow\s*\(\s*\)'),
    ('DATEFORMAT()',    r'\bdateformat\s*\('),
    ('DAYS()',          r'\bdays\s*\('),
    ('MONTHS()',        r'\bmonths\s*\('),
    ('YEARS()',         r'\byears\s*\('),
    ('STRING()',        r'\bstring\s*\('),
    ('MOD()',           r'\bmod\s*\('),
    ('LOCATE()',        r'\blocate\s*\('),
    ('SUBSTR()',        r'\bsubstr\s*\('),
    ('IFNULL()',        r'\bifnull\s*\('),
]

EXTENSIONS = {'.srd', '.srw', '.srf', '.sru', '.srs'}

# Markers that indicate we're entering embedded SQL in PowerScript
SQL_START = re.compile(
    r'^\s*(SELECT|INSERT\s+INTO|UPDATE\s+\w|DELETE\s+FROM|EXECUTE\s+\(|EXECUTE\s+IMMEDIATE)',
    re.IGNORECASE
)
SQL_END = re.compile(r'USING\s+\w+\s*;', re.IGNORECASE)

def open_pb_file(fpath):
    with open(fpath, 'rb') as f:
        raw = f.read(2)
    if raw in (b'\xff\xfe', b'\xfe\xff'):
        return open(fpath, 'r', encoding='utf-16', errors='replace')
    return open(fpath, 'r', encoding='utf-8', errors='replace')

def extract_sql_lines(fpath, ext):
    """
    Yield (line_no, line_text) for lines that are inside SQL context.
    For .srd files: content of retrieve="..." attributes.
    For script files: embedded SQL blocks (SELECT...USING sqlca;).
    """
    with open_pb_file(fpath) as f:
        lines = f.readlines()

    if ext == '.srd':
        # DataWindow source — pull out retrieve="..." value (may span multiple lines)
        full_text = ''.join(lines)
        for m in re.finditer(r'retrieve="(.*?)"(?=\s)', full_text, re.IGNORECASE | re.DOTALL):
            sql_block = m.group(1)
            start_line = full_text[:m.start()].count('\n') + 1
            for offset, line in enumerate(sql_block.splitlines()):
                yield start_line + offset, line
    else:
        # PowerScript — track when we're inside an embedded SQL statement
        in_sql = False
        for line_no, line in enumerate(lines, 1):
            if not in_sql and SQL_START.search(line):
                in_sql = True
            if in_sql:
                yield line_no, line.rstrip()
                if SQL_END.search(line) or line.strip().endswith(';'):
                    in_sql = False

# Results: { label -> [ (filename, line_no, line_text), ... ] }
results = defaultdict(list)
file_count = 0

for fname in sorted(os.listdir(SCAN_DIR)):
    ext = os.path.splitext(fname)[1].lower()
    if ext not in EXTENSIONS:
        continue
    file_count += 1
    fpath = os.path.join(SCAN_DIR, fname)
    for line_no, line in extract_sql_lines(fpath, ext):
        for label, pattern in PATTERNS:
            if re.search(pattern, line, re.IGNORECASE):
                results[label].append((fname, line_no, line[:120]))

# --- Report ---
print(f"Scanned {file_count} files in {SCAN_DIR}")
print(f"{'='*70}\n")

if not results:
    print("No issues found.")
else:
    # Summary table first
    print(f"{'ISSUE':<22} {'HITS':>5}  {'FILES':>5}")
    print(f"{'-'*22} {'-'*5}  {'-'*5}")
    for label, hits in sorted(results.items(), key=lambda x: -len(x[1])):
        files = len({h[0] for h in hits})
        print(f"{label:<22} {len(hits):>5}  {files:>5}")

    print(f"\n{'='*70}\n")

    # Detail by issue
    for label, hits in sorted(results.items(), key=lambda x: -len(x[1])):
        files = sorted({h[0] for h in hits})
        print(f"{'='*70}")
        print(f"  {label}  ({len(hits)} hits in {len(files)} file(s))")
        print(f"{'='*70}")
        current_file = None
        for fname, line_no, line_text in hits:
            if fname != current_file:
                print(f"\n  {fname}")
                current_file = fname
            print(f"    {line_no:>5}: {line_text[:120]}")
        print()
