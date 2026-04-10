"""
Find SQL statements with SQLA-specific syntax in the profiler export.
Run this, then paste the output into the chat.
"""
import re

filepath = r'C:\Database\Catch22 Unload\Migration\Profiler_Export.sql'

with open(filepath, 'r', encoding='utf-16', errors='replace') as f:
    content = f.read()

stmts = [s.strip() for s in content.split('\ngo\n') if s.strip()]

sqla = re.compile(
    r'\bif\b(?!\s*\()|\bendif\b|\blist\s*\(|\|\|'
    r'|ifnull\s*\(|today\s*\(\s*\)|\bstring\s*\(|\bdateformat\s*\(',
    re.IGNORECASE
)

bad = [s for s in stmts if sqla.search(s)]
print(f"Statements with SQLA syntax: {len(bad)} of {len(stmts)}")
print()
for s in bad:
    hits = set(sqla.findall(s))
    print(f"--- [{hits}] ---")
    print(s[:600])
    print()
