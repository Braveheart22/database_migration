import re

filepath = r'C:\Database\Catch22 Unload\Migration\Powerbuilder\llPrep\d_quote_admin.srd'
with open(filepath, 'r', encoding='utf-16', errors='replace') as f:
    content = f.read()

retrieve_pattern = re.compile(r'retrieve="(.*?)(?<!~)"', re.DOTALL | re.IGNORECASE)
m = retrieve_pattern.search(content)
if m:
    sql = m.group(1)
    # Show the noprintfreight section
    idx = sql.lower().find('noprintfreight')
    if idx >= 0:
        start = max(0, idx - 250)
        end = min(len(sql), idx + 100)
        print("=== noprintfreight section ===")
        print(sql[start:end])
