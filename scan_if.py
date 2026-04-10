import re, os, sys

scan_dir = r'C:\Database\Catch22 Unload\Migration\Powerbuilder\llPrep'
out_lines = []

for fname in sorted(os.listdir(scan_dir)):
    if not fname.lower().endswith('.srd'):
        continue
    fpath = os.path.join(scan_dir, fname)
    try:
        with open(fpath, 'r', encoding='utf-16', errors='replace') as f:
            content = f.read()
    except Exception:
        continue

    retrieve_pat = re.compile(r'retrieve="(.*?)(?<!~)"', re.DOTALL | re.IGNORECASE)
    has_if = False
    has_ifnull3 = False
    for m in retrieve_pat.finditer(content):
        sql = m.group(1)
        if re.search(r'\bif\b(?!\s*\()', sql, re.IGNORECASE):
            has_if = True
        if re.search(r'\bifnull\s*\(', sql, re.IGNORECASE):
            has_ifnull3 = True
    if has_if or has_ifnull3:
        tags = []
        if has_if: tags.append('IF..THEN')
        if has_ifnull3: tags.append('IFNULL3')
        out_lines.append(f'{fname}: {", ".join(tags)}')

result = f'Files with SQL-syntax issues: {len(out_lines)}\n' + '\n'.join(out_lines)

with open(r'C:\Database\Catch22 Unload\Migration\scan_if_result.txt', 'w') as f:
    f.write(result)
