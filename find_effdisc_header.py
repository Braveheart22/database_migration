"""Find f_effective_discount in w_prep_header.srw specifically."""
import re

filepath = r'C:\Database\Catch22 Unload\Migration\Powerbuilder\llPrep\w_prep_header.srw'
with open(filepath, 'r', encoding='utf-16', errors='replace') as f:
    content = f.read()

# Find all occurrences
pat = re.compile(r'f_effective_discount', re.IGNORECASE)
for m in pat.finditer(content):
    start = max(0, m.start() - 150)
    end   = min(len(content), m.end() + 150)
    print(content[start:end])
    print("---")
