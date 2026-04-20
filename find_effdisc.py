"""Find f_effective_discount references in llPrep files."""
import re, os

llprep = r'C:\Database\Catch22 Unload\Migration\Powerbuilder\llPrep'

for fname in sorted(os.listdir(llprep)):
    fpath = os.path.join(llprep, fname)
    if not os.path.isfile(fpath):
        continue
    try:
        with open(fpath, 'r', encoding='utf-16', errors='replace') as f:
            content = f.read()
    except Exception:
        continue
    if 'f_effective_discount' in content.lower():
        # find context
        idx = content.lower().find('f_effective_discount')
        start = max(0, idx - 80)
        end   = min(len(content), idx + 120)
        print(f"=== {fname} ===")
        print(content[start:end])
        print()
