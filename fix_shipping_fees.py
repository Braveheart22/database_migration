"""
Fix d_view_prep_shipping_fees_dealer.srd:
Rewrite the retrieve SQL as a CTE to resolve the forward alias chain:
  shippingcost -> centsubstring -> costshow -> SHOWTEXT

Also converts:
  string(x)          -> CAST(x AS VARCHAR(50))
  locate(src, pat)   -> CHARINDEX(pat, src)
  length(x)          -> LEN(x)
  if...then...endif  -> CASE WHEN...THEN...END
"""
import re

filepath = r'C:\Database\Catch22 Unload\Migration\Powerbuilder\llPrep\d_view_prep_shipping_fees_dealer.srd'

with open(filepath, 'r', encoding='utf-16', errors='replace') as f:
    content = f.read()

retrieve_pat = re.compile(r'(retrieve=")(.*?)(?<!~)(")', re.DOTALL | re.IGNORECASE)
m = retrieve_pat.search(content)
if not m:
    print("ERROR: No retrieve block found.")
    exit(1)

# Find the parameter name used for prep_id in this DW
old_sql = m.group(2)
param_match = re.search(r'~"prep~"\.~"prep_id~"\s*=\s*(:[\w]+)', old_sql, re.IGNORECASE)
if param_match:
    param = param_match.group(1)
    print(f"Found parameter: {param}")
else:
    param = ':al_prep_id'
    print(f"Parameter not detected, defaulting to {param}")

# Write the new CTE-based retrieve SQL using PB's ~"..~" quoting for identifiers.
# The 5 DW columns (positional order from original): prep_id, shippingcost, centsubstring, costshow, SHOWTEXT
new_sql = f"""
WITH ShipBase AS (
    -- Drop charge: applies when shipto_code = 'Drop' and term_id <> 8
    SELECT
        ~"prep~".~"prep_id~",
        CAST(
            CASE WHEN ~"prep_manf~".~"ship_via_id~" NOT IN (37,31)
                THEN (SELECT syscon.cost_drop_mf FROM syscon WHERE syscon.syscon_id = 1)
                ELSE (SELECT syscon.cost_drop_ups FROM syscon WHERE syscon.syscon_id = 1)
            END
        AS VARCHAR(50)) AS shippingcost,
        ~"prep_manf~".~"ship_via_id~",
        'DROP' AS charge_type
    FROM ~"prep~", ~"prep_manf~"
    WHERE (~"prep~".~"prep_id~" = ~"prep_manf~".~"prep_id~")
      AND ((~"prep~".~"selected_quote_no~" = ~"prep_manf~".~"quote_no~")
           OR (~"prep~".~"selected_quote_no~" = 0 AND ~"prep_manf~".~"status~" > 0))
      AND (upper(~"prep~".~"shipto_code~") = upper('Drop'))
      AND (~"prep~".~"term_id~" <> 8)
      AND (~"prep~".~"prep_id~" = {param})

    UNION

    -- Signature charge: applies for UPS/specific carriers with a SIGNATURE rule
    SELECT
        ~"prep~".~"prep_id~",
        CAST(
            (SELECT syscon.cost_signature FROM syscon WHERE syscon.syscon_id = 1)
        AS VARCHAR(50)) AS shippingcost,
        ~"prep_manf~".~"ship_via_id~",
        'SIGNATURE' AS charge_type
    FROM ~"prep~", ~"prep_manf~"
    WHERE (~"prep~".~"prep_id~" = ~"prep_manf~".~"prep_id~")
      AND ((~"prep~".~"selected_quote_no~" = ~"prep_manf~".~"quote_no~")
           OR (~"prep~".~"selected_quote_no~" = 0 AND ~"prep_manf~".~"status~" > 0))
      AND (~"prep_manf~".~"ship_via_id~" IN (37,31))
      AND (~"prep~".~"prep_id~" = {param})
      AND (SELECT COUNT(*) FROM ~"prep_rules~"
           WHERE ~"prep_rules~".~"category~" = 'SHIP'
             AND ~"prep_rules~".~"type~" = 'SIGNATURE'
             AND ~"prep_rules~".~"prep_id~" = ~"prep~".~"prep_id~"
             AND ~"prep_rules~".~"active~" = 'Y') > 0
),
WithCent AS (
    SELECT *,
        CASE WHEN CHARINDEX('.', shippingcost) > 0
            THEN RIGHT(shippingcost, LEN(shippingcost) - CHARINDEX('.', shippingcost))
            ELSE ''
        END AS centsubstring
    FROM ShipBase
),
WithCost AS (
    SELECT *,
        CASE WHEN LEN(centsubstring) = 0 THEN '$' + shippingcost + '.00'
             WHEN LEN(centsubstring) = 1 THEN '$' + shippingcost + '0'
             ELSE '$' + shippingcost
        END AS costshow
    FROM WithCent
)
SELECT
    ~"prep_id~",
    shippingcost,
    centsubstring,
    costshow,
    CASE charge_type
        WHEN 'DROP' THEN
            'THIS JOBS REQUIRES A DROP ' +
            CASE WHEN ship_via_id NOT IN (37,31) THEN 'MOTOR FREIGHT' ELSE 'UPS' END +
            ' CHARGE ---------- ' + costshow
        ELSE
            'THIS JOBS REQUIRES A SIGNATURE CHARGE ---------- ' + costshow
    END AS SHOWTEXT
FROM WithCost"""

new_content = content[:m.start(2)] + new_sql + content[m.end(2):]

backup = filepath + '.fix.bak'
with open(backup, 'w', encoding='utf-16') as f:
    f.write(content)
with open(filepath, 'w', encoding='utf-16') as f:
    f.write(new_content)

print(f"Written CTE rewrite.")
print(f"Backup: {backup}")
print(f"Written: {filepath}")
print()
print("Detected parameter:", param)
print("Verify in PB that the 5 DW columns are: prep_id, shippingcost, centsubstring, costshow, SHOWTEXT")
