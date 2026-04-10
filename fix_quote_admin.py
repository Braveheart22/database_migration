"""Fix d_quote_admin.srd: inline the billto_dealer_code alias reference in noprintfreight."""
import re, shutil

filepath = r'C:\Database\Catch22 Unload\Migration\Powerbuilder\llPrep\d_quote_admin.srd'

with open(filepath, 'r', encoding='utf-16', errors='replace') as f:
    content = f.read()

# The problematic pattern (already extracted to quote_admin_sql_1.txt):
# (select dealer.no_print_freight
#  from dealer
#  where dealer.dealer_code =  billto_dealer_code) as noprintfreight,
#
# Fix: replace bare `billto_dealer_code` in that WHERE clause with the inline subquery.

old = (
    r'(select dealer\.no_print_freight\s*'
    r'from dealer\s*'
    r'where dealer\.dealer_code\s*=\s*billto_dealer_code)'
)
new = (
    '(select dealer.no_print_freight\n'
    '\t\t\t\tfrom dealer\n'
    '\t\t\t\twhere dealer.dealer_code = (\n'
    '\t\t\t\t\tselect prep.billto_Dealer_code\n'
    '\t\t\t\t\tfrom prep\n'
    '\t\t\t\t\twhere prep.prep_id = prep_manf_admin.prep_id))'
)

new_content, count = re.subn(old, new, content, flags=re.IGNORECASE | re.DOTALL)
if count == 0:
    print("ERROR: Pattern not found — check the file manually.")
else:
    backup = filepath + '.bak'
    with open(backup, 'w', encoding='utf-16') as f:
        f.write(content)
    with open(filepath, 'w', encoding='utf-16') as f:
        f.write(new_content)
    print(f"Fixed {count} occurrence(s). Backup: {backup}")
    print(f"Written: {filepath}")
