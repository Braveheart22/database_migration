"""Quick spot-check: show the converted SQL for d_prep_header.srd without writing."""
import re, sys
sys.path.insert(0, r'C:\Database\Catch22 Unload\Migration\Powerbuilder')
from convertSQLASyntax import transform_sql

filepath = r'C:\Database\Catch22 Unload\Migration\Powerbuilder\llPrep\d_prep_header.srd'
with open(filepath, 'r', encoding='utf-16', errors='replace') as f:
    content = f.read()

retrieve_pattern = re.compile(r'(retrieve=")(.*?)(?<!~)(")', re.DOTALL | re.IGNORECASE)

for i, m in enumerate(retrieve_pattern.finditer(content)):
    sql = m.group(2)
    transformed = transform_sql(sql)
    if sql != transformed:
        print(f"=== Block {i+1} CHANGES ===")
        orig_lines = sql.split('\n')
        new_lines  = transformed.split('\n')
        for j, (ol, nl) in enumerate(zip(orig_lines, new_lines)):
            if ol != nl:
                print(f"  - {ol.strip()}")
                print(f"  + {nl.strip()}")
        print()
    else:
        print(f"Block {i+1}: no changes")

# Also show the full converted SQL around IF/IFNULL hits
print("\n=== CONVERTED dealer_depositrequired section ===")
m = retrieve_pattern.search(content)
if m:
    sql = m.group(2)
    transformed = transform_sql(sql)
    # Find the dealer_depositrequired section
    idx = transformed.find('dealer_depositrequired')
    if idx >= 0:
        start = max(0, idx - 300)
        end   = min(len(transformed), idx + 50)
        print(transformed[start:end])

print("\n=== CONVERTED alter_job section ===")
m = retrieve_pattern.search(content)
if m:
    sql = m.group(2)
    transformed = transform_sql(sql)
    idx = transformed.find('alter_job')
    if idx >= 0:
        start = max(0, idx - 50)
        end   = min(len(transformed), idx + 100)
        print(transformed[start:end])

with open(r'C:\Database\Catch22 Unload\Migration\check_convert_result.txt', 'w') as f:
    f.write("done - check output above")
