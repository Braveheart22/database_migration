"""
Check w_prep_header.srw for DataWindow dataobject references,
and scan those .srd files for any remaining SQLA issues.
"""
import re, os

srw_path = r'C:\Database\Catch22 Unload\Migration\Powerbuilder\llPrep\w_prep_header.srw'
llprep   = r'C:\Database\Catch22 Unload\Migration\Powerbuilder\llPrep'

with open(srw_path, 'r', encoding='utf-16', errors='replace') as f:
    srw = f.read()

# Extract dataobject = "xxx" references
dw_refs = re.findall(r'dataobject\s*=\s*"([^"]+)"', srw, re.IGNORECASE)
dw_refs = sorted(set(dw_refs))
print(f"DataWindow objects referenced in w_prep_header.srw: {len(dw_refs)}")
for d in dw_refs:
    srd = os.path.join(llprep, d + '.srd')
    exists = 'EXISTS' if os.path.exists(srd) else 'MISSING'
    print(f"  {d} [{exists}]")

# Also look for any d_prep_files references (for the 'file' problem)
print()
file_hits = [d for d in dw_refs if 'file' in d.lower()]
print(f"DWs with 'file' in name: {file_hits}")

list_hits = [d for d in dw_refs if 'list' in d.lower()]
print(f"DWs with 'list' in name: {list_hits}")
