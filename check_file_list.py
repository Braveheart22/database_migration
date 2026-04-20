"""
Scan all DWs used by w_prep_header for potential 'file' and 'list' column issues.
Also check for any remaining SQLA syntax issues (TODAY, STRING, etc.).
"""
import re, os

llprep = r'C:\Database\Catch22 Unload\Migration\Powerbuilder\llPrep'

# DWs that exist
dw_names = [
    'd_altered_prep', 'd_auto_quote_prep', 'd_cfa_double', 'd_check_blank_category_bd',
    'd_cover_hardware', 'd_cutbleep_tag_head', 'd_estm_detail_quote_quotes_liners_prep',
    'd_from_dealer_comments', 'd_linked_jobs', 'd_payment_History2', 'd_prep_Cancel',
    'd_prep_action_tickets', 'd_prep_admin_pricing', 'd_prep_blue_dot', 'd_prep_comments',
    'd_prep_documents', 'd_prep_easyjob', 'd_prep_files', 'd_prep_generational',
    'd_prep_header', 'd_prep_image_loc', 'd_prep_job_altered', 'd_prep_liner_tracking',
    'd_prep_load_hardware', 'd_prep_measure_information', 'd_prep_ms', 'd_prep_ms_cv',
    'd_prep_ms_ln', 'd_prep_number', 'd_prep_replacement', 'd_prep_retail',
    'd_prep_rules', 'd_prep_special_instructions', 'd_prep_treatments',
    'd_prep_warranty_cover', 'd_prep_warranty_ln_extend', 'd_quote_admin',
    'd_quote_detail', 'd_quote_hardware', 'd_rtn_bluesheet_for_prep',
    'd_rtn_bluesheet_for_prep_files', 'd_status_log', 'd_tech_cover_hardware',
    'd_tech_errors', 'd_tech_hardware', 'd_tech_manf', 'd_tech_prep_special_instructions',
    'd_tech_prep_treatments', 'd_tech_special_instructions', 'd_tech_treatments',
    'd_view_prep_shipping_fees_dealer', 'd_view_quote_detail_prep', 'dw_combined_rules',
]

retrieve_pat = re.compile(r'retrieve="(.*?)(?<!~)"', re.DOTALL | re.IGNORECASE)

# Reserved words / keywords that might cause trouble as bare identifiers in MSSQL
suspects = ['file', 'list', 'today', 'now', 'string', 'if\b', 'ifnull']

issues = []

for dw in dw_names:
    srd = os.path.join(llprep, dw + '.srd')
    if not os.path.exists(srd):
        continue
    with open(srd, 'r', encoding='utf-16', errors='replace') as f:
        content = f.read()
    for m in retrieve_pat.finditer(content):
        sql = m.group(1)
        for kw in suspects:
            pat = re.compile(r'\b' + kw + r'\b', re.IGNORECASE)
            hits = pat.findall(sql)
            if hits:
                issues.append((dw, kw.replace(r'\b',''), len(hits)))

print("Potential issues in referenced DWs:")
for dw, kw, count in sorted(issues):
    print(f"  {dw}: '{kw}' ({count} hit(s))")

# Specifically check d_prep_files SQL
print()
print("=== d_prep_files.srd retrieve SQL ===")
srd = os.path.join(llprep, 'd_prep_files.srd')
if os.path.exists(srd):
    with open(srd, 'r', encoding='utf-16', errors='replace') as f:
        content = f.read()
    for m in retrieve_pat.finditer(content):
        print(m.group(1)[:2000])
