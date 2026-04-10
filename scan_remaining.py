"""
Scan all DWs used by w_prep_header for any remaining SQLA-specific syntax
in their retrieve blocks: TODAY, STRING, DATEFORMAT, forward alias, LIST, etc.
"""
import re, os

llprep = r'C:\Database\Catch22 Unload\Migration\Powerbuilder\llPrep'
retrieve_pat = re.compile(r'retrieve="(.*?)(?<!~)"', re.DOTALL | re.IGNORECASE)

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
    'd_view_prep_shipping_fees_dealer', 'dw_combined_rules',
]

# Patterns that are valid SQLA but not SQL Server
suspect_patterns = {
    'TODAY()':     re.compile(r'\btoday\s*\(\s*\)', re.IGNORECASE),
    'NOW()':       re.compile(r'\bnow\s*\(\s*\)', re.IGNORECASE),
    'LIST()':      re.compile(r'\blist\s*\(', re.IGNORECASE),
    'IF..THEN':    re.compile(r'\bif\b(?!\s*\()', re.IGNORECASE),
    'IFNULL(3arg)':re.compile(r'\bifnull\s*\(', re.IGNORECASE),
    'STRING()':    re.compile(r'\bstring\s*\(', re.IGNORECASE),
    'DATEFORMAT':  re.compile(r'\bdateformat\s*\(', re.IGNORECASE),
    'YMD/DMY/MDY': re.compile(r'\b(ymd|dmy|mdy)\s*\(', re.IGNORECASE),
    'DAYS()':      re.compile(r'\bdays\s*\(', re.IGNORECASE),
    'MONTHS()':    re.compile(r'\bmonths\s*\(', re.IGNORECASE),
    'MOD()':       re.compile(r'\bmod\s*\(', re.IGNORECASE),
}

found_any = False
for dw in dw_names:
    srd = os.path.join(llprep, dw + '.srd')
    if not os.path.exists(srd):
        continue
    with open(srd, 'r', encoding='utf-16', errors='replace') as f:
        content = f.read()
    for m in retrieve_pat.finditer(content):
        sql = m.group(1)
        for name, pat in suspect_patterns.items():
            if pat.search(sql):
                # Show context
                hit = pat.search(sql)
                start = max(0, hit.start() - 80)
                end   = min(len(sql), hit.end() + 80)
                print(f"  [{name}] {dw}")
                print(f"    ...{sql[start:end].strip()}...")
                print()
                found_any = True

if not found_any:
    print("No remaining SQLA syntax issues found in any referenced DW retrieve blocks.")
