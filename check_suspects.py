"""Show the context around 'list', 'string', and 'file' hits in relevant DWs."""
import re, os

llprep = r'C:\Database\Catch22 Unload\Migration\Powerbuilder\llPrep'
retrieve_pat = re.compile(r'retrieve="(.*?)(?<!~)"', re.DOTALL | re.IGNORECASE)

checks = [
    ('d_prep_generational', 'list'),
    ('d_estm_detail_quote_quotes_liners_prep', 'list'),
    ('d_prep_load_hardware', 'string'),
    ('d_quote_hardware', 'string'),
    ('d_rtn_bluesheet_for_prep_files', 'file'),
]

for dw, kw in checks:
    srd = os.path.join(llprep, dw + '.srd')
    if not os.path.exists(srd):
        print(f"MISSING: {srd}")
        continue
    with open(srd, 'r', encoding='utf-16', errors='replace') as f:
        content = f.read()
    for m in retrieve_pat.finditer(content):
        sql = m.group(1)
        pat = re.compile(r'\b' + kw + r'\b', re.IGNORECASE)
        for hit in pat.finditer(sql):
            start = max(0, hit.start() - 100)
            end   = min(len(sql), hit.end() + 100)
            print(f"=== {dw} / '{kw}' ===")
            print(sql[start:end])
            print()
