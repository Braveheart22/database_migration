"""Find ALL f_effective_discount references in llPrep, showing context."""
import re, os

llprep = r'C:\Database\Catch22 Unload\Migration\Powerbuilder\llPrep'
pat = re.compile(r'(?<![dD][bB][aA]\.)\bf_effective_discount\b', re.IGNORECASE)

for fname in sorted(os.listdir(llprep)):
    if '.bak' in fname:
        continue
    fpath = os.path.join(llprep, fname)
    if not os.path.isfile(fpath):
        continue
    try:
        with open(fpath, 'r', encoding='utf-16', errors='replace') as f:
            content = f.read()
    except Exception:
        continue
    for m in pat.finditer(content):
        start = max(0, m.start() - 120)
        end   = min(len(content), m.end() + 120)
        print(f"=== {fname} ===")
        print(repr(content[start:end]))
        print()
