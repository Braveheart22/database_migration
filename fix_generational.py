"""Fix d_prep_generational.srd: replace SQLA LIST() with SQL Server STRING_AGG()."""
import re

filepath = r'C:\Database\Catch22 Unload\Migration\Powerbuilder\llPrep\d_prep_generational.srd'

with open(filepath, 'r', encoding='utf-16', errors='replace') as f:
    content = f.read()

retrieve_pattern = re.compile(r'(retrieve=")(.*?)(?<!~)(")', re.DOTALL | re.IGNORECASE)

# SQLA: list(expr)  ->  SQL Server: STRING_AGG(CAST(expr AS VARCHAR(50)), ',')
# The expr here is ~"p_g~".~"prep_id~" (an integer column)
list_pat = re.compile(
    r'\blist\s*\(\s*(~"p_g~"\.~"prep_id~")\s*\)',
    re.IGNORECASE
)

offset = 0
new_content = content
changes = 0

for match in retrieve_pattern.finditer(content):
    start = match.start(2) + offset
    end   = match.end(2)   + offset
    sql   = new_content[start:end]

    new_sql, n = list_pat.subn(
        r"STRING_AGG(CAST(\1 AS VARCHAR(20)), ',')",
        sql
    )
    changes += n
    new_content = new_content[:start] + new_sql + new_content[end:]
    offset += len(new_sql) - len(sql)

if changes == 0:
    print("ERROR: Pattern not found.")
else:
    backup = filepath + '.bak'
    with open(backup, 'w', encoding='utf-16') as f:
        f.write(content)
    with open(filepath, 'w', encoding='utf-16') as f:
        f.write(new_content)
    print(f"Fixed {changes} LIST() call(s).")
    print(f"Backup: {backup}")
    print(f"Written: {filepath}")
