import re

filepath = r'C:\Database\Catch22 Unload\Migration\Powerbuilder\llPrep\d_prep_generational.srd'
with open(filepath, 'r', encoding='utf-16', errors='replace') as f:
    content = f.read()

retrieve_pattern = re.compile(r'retrieve="(.*?)(?<!~)"', re.DOTALL | re.IGNORECASE)
for i, m in enumerate(retrieve_pattern.finditer(content)):
    sql = m.group(1)
    with open(rf'C:\Database\Catch22 Unload\Migration\generational_sql_{i+1}.txt', 'w', encoding='utf-8') as f:
        f.write(sql)
    print(f'Block {i+1}: {len(sql)} chars')
