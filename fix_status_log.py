"""
Fix d_status_log.srd: inline creditreleaseflag and shippingreleaseflag
in the CASE WHEN condition where they are used as forward alias references.

After convertSQLASyntax.py converted IF->CASE WHEN, the CASE WHEN condition
still references these aliases before they are defined later in the SELECT.
SQL Server does not allow forward alias references; inline the subqueries instead.
"""
import re

filepath = r'C:\Database\Catch22 Unload\Migration\Powerbuilder\llPrep\d_status_log.srd'

with open(filepath, 'r', encoding='utf-16', errors='replace') as f:
    content = f.read()

retrieve_pat = re.compile(r'(retrieve=")(.*?)(?<!~)(")', re.DOTALL | re.IGNORECASE)

m = retrieve_pat.search(content)
if not m:
    print("ERROR: No retrieve block found.")
    exit(1)

sql = m.group(2)

# The forward aliases used in the CASE WHEN condition:
#   creditreleaseflag   = (select coalesce(prep.credit_release_flag,'') from prep where prep.prep_id = log.prep_id)
#   shippingreleaseflag = (select coalesce(prep.shipping_release_flag,'') from prep where prep.prep_id = log.prep_id)
#
# We need to replace the bare alias comparisons in the CASE WHEN condition.
# The exact text in the .srd (after IF->CASE conversion) is:
#   (creditreleaseflag = 'H' or shippingreleaseflag = 'H' )

old = "(creditreleaseflag = 'H' or shippingreleaseflag = 'H' )"

# Use the same subquery pattern that's already in the SQL for defining these aliases,
# but adapted for use inside the CASE WHEN condition.
# In the .srd the log table identifier appears as ~"log~"
new = ("((select coalesce(prep.credit_release_flag,'') from prep"
       " where prep.prep_id = ~\"log~\".prep_id) = 'H'"
       " or"
       " (select coalesce(prep.shipping_release_flag,'') from prep"
       " where prep.prep_id = ~\"log~\".prep_id) = 'H')")

if old not in sql:
    # Try without tildes (in case it was stored differently)
    old2 = '(creditreleaseflag = \'H\' or shippingreleaseflag = \'H\' )'
    if old2 not in sql:
        print("Pattern not found — printing the CASE WHEN section for inspection:")
        idx = sql.lower().find('creditreleaseflag')
        if idx >= 0:
            print(repr(sql[max(0,idx-100):idx+200]))
        else:
            print("'creditreleaseflag' not found in retrieve block at all.")
        exit(1)
    old = old2

new_sql = sql.replace(old, new, 1)
if new_sql == sql:
    print("ERROR: replacement had no effect.")
    exit(1)

new_content = content[:m.start(2)] + new_sql + content[m.end(2):]

backup = filepath + '.fix.bak'
with open(backup, 'w', encoding='utf-16') as f:
    f.write(content)

with open(filepath, 'w', encoding='utf-16') as f:
    f.write(new_content)

print(f"Fixed: creditreleaseflag and shippingreleaseflag inlined.")
print(f"Backup: {backup}")
print(f"Written: {filepath}")
