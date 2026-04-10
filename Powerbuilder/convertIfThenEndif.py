"""
convertIfThenEndif.py
---------------------
Converts SQLA IF...THEN...ENDIF syntax to T-SQL CASE WHEN...THEN...END
within the retrieve= SQL block of a PowerBuilder .srd file.

Only modifies the retrieve block — leaves compute/text/column
PowerBuilder expression attributes untouched.

Usage: python convertIfThenEndif.py <filepath>
"""

import re
import sys
import os

def transform_sql(sql):
    # Replace SQLA 'if <condition> then' with 'CASE WHEN <condition> THEN'
    # Use (?!\s*\() to avoid matching PB expression if() calls
    sql = re.sub(r'\bif\b(?!\s*\()', 'CASE WHEN', sql, flags=re.IGNORECASE)
    # Replace 'endif' with 'END'
    sql = re.sub(r'\bendif\b', 'END', sql, flags=re.IGNORECASE)
    return sql

def convert_file(filepath):
    print(f"Reading: {filepath}")

    with open(filepath, 'r', encoding='utf-16', errors='replace') as f:
        content = f.read()

    # The retrieve block sits between retrieve=" and the next unescaped closing "
    # PB escapes embedded quotes as ~" so we look for a " not preceded by ~
    retrieve_pattern = re.compile(
        r'(retrieve=")(.*?)(?<!~)(")',
        re.DOTALL | re.IGNORECASE
    )

    matches = list(retrieve_pattern.finditer(content))
    if not matches:
        print("ERROR: No retrieve block found.")
        return

    print(f"Found {len(matches)} retrieve block(s).")

    offset = 0
    new_content = content
    for i, match in enumerate(matches):
        # Adjust positions for any previous replacements
        start = match.start(2) + offset
        end   = match.end(2)   + offset
        original_sql = new_content[start:end]
        transformed  = transform_sql(original_sql)

        changes = sum(1 for a, b in zip(
            original_sql.split('\n'), transformed.split('\n')) if a != b)
        print(f"  Block {i+1}: {changes} line(s) changed")

        new_content = new_content[:start] + transformed + new_content[end:]
        offset += len(transformed) - len(original_sql)

    # Back up original
    backup = filepath + '.bak'
    with open(backup, 'w', encoding='utf-16') as f:
        f.write(content)
    print(f"Backup saved: {backup}")

    with open(filepath, 'w', encoding='utf-16') as f:
        f.write(new_content)
    print(f"Done. Written: {filepath}")

if __name__ == '__main__':
    if len(sys.argv) < 2:
        print("Usage: python convertIfThenEndif.py <filepath>")
        sys.exit(1)
    convert_file(sys.argv[1])
