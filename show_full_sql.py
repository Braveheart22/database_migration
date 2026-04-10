import re

f = open(r'C:\Database\Catch22 Unload\Migration\Profiler_Export.sql', 'r', encoding='utf-16')
content = f.read()
f.close()

stmts = [s.strip() for s in content.split('\ngo\n') if s.strip()]

for s in stmts:
    if 'shippingcost' in s or ('creditreleaseflag' in s):
        print('=' * 60)
        print(s)
        print()
