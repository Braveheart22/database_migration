import pyodbc
import time

# --- Connections ---
src = pyodbc.connect(
    'DRIVER={SQL Anywhere 17};'
    'HOST=192.168.250.34;'
    'SERVER=Emmitt;'
    'DATABASE=Smith;'
    'UID=dba;'
    'PWD=sql34;'
)
print("Connected to SQLA database.")

dst = pyodbc.connect(
    'DRIVER={ODBC Driver 18 for SQL Server};'
    'SERVER=Loop-DB01;'
    'DATABASE=LoopLoc_SchemaOnly;'
    'Trusted_Connection=yes;'
    'TrustServerCertificate=yes;'
)
print("Connected to MSSQL database.")

# --- Tables to exclude (SQL Anywhere internals, not business data) ---
EXCLUDE_TABLES = {
    'pbcatcol', 'pbcatedt', 'pbcatfmt', 'pbcattbl', 'pbcatvld',
    'ix_consultant_affected_columns', 'ix_consultant_capture',
    'ix_consultant_index', 'ix_consultant_ixcol', 'ix_consultant_log',
    'ix_consultant_master', 'ix_consultant_query_index',
    'ix_consultant_query_phase', 'ix_consultant_query_text',
    'ix_consultant_workload', 'jdbc_function_escapes',
    'ml_connection_script', 'ml_device', 'ml_device_address',
    'ml_listening', 'ml_property', 'ml_qa_delivery',
    'ml_qa_global_props', 'ml_qa_notifications', 'ml_qa_repository',
    'ml_qa_repository_props', 'ml_qa_repository_staging',
    'ml_qa_status_history', 'ml_qa_status_staging', 'ml_script',
    'ml_script_version', 'ml_scripts_modified', 'ml_subscription',
    'ml_table', 'ml_table_script', 'ml_user',
    'rs_lastcommit', 'rs_threads',
    'RowGenerator', 'DUMMY',
}

# --- Build list of tables to migrate from SQL Anywhere ---
def get_tables():
    cur = src.cursor()
    cur.execute("""
        SELECT t.table_name
        FROM SYS.SYSTABLE t
        JOIN SYS.SYSUSERPERM u ON t.creator = u.user_id
        WHERE t.table_type = 'BASE'
        AND u.user_name = 'DBA'
        ORDER BY t.table_name
    """)
    all_tables = [row[0] for row in cur.fetchall()]
    return [t for t in all_tables if t.lower() not in
            {e.lower() for e in EXCLUDE_TABLES}]

# --- Build set of tables that have identity columns in SQL Server ---
def get_identity_tables():
    cur = dst.cursor()
    cur.execute("SELECT OBJECT_NAME(object_id) FROM sys.identity_columns")
    return {row[0].lower() for row in cur.fetchall()}

identity_tables = get_identity_tables()

def migrate_table(table_name):
    src_cur = src.cursor()
    dst_cur = dst.cursor()
    dst_cur.fast_executemany = True

    has_identity = table_name.lower() in identity_tables

    print(f"Migrating {table_name}...")

    src_cur.execute(f"SELECT * FROM {table_name}")
    columns    = [col[0] for col in src_cur.description]
    col_list   = ', '.join(f'[{col}]' for col in columns)  # brackets fix reserved words
    params     = ', '.join(['?' for _ in columns])
    insert_sql = f"INSERT INTO [{table_name}] ({col_list}) VALUES ({params})"

    # Wipe target table before importing
    dst_cur.execute(f"TRUNCATE TABLE [{table_name}]")
    dst.commit()

    if has_identity:
        dst_cur.execute(f"SET IDENTITY_INSERT [{table_name}] ON")

    start_time = time.time()
    total = 0

    try:
        batch_size = 500
        rows = src_cur.fetchmany(batch_size)

        while rows:
            dst_cur.executemany(insert_sql, rows)
            dst.commit()
            total += len(rows)
            print(f"  {total} rows inserted...")
            rows = src_cur.fetchmany(batch_size)

    finally:
        # Always turn off IDENTITY_INSERT, even if an error occurred
        if has_identity:
            try:
                dst_cur.execute(f"SET IDENTITY_INSERT [{table_name}] OFF")
                dst.commit()
            except:
                pass

    elapsed = time.time() - start_time
    minutes = int(elapsed // 60)
    seconds = elapsed % 60
    print(f"  Done. {total} rows inserted in {minutes} minutes and {seconds:.4f} seconds.\n")
    return total

# --- Re-run only failed tables ---
failed_tables = [                                                                                                                               'bill_of_lading_header', 'bin_created', 'bin_label', 'bin_qty_removed',
    'blue_dot_questions', 'calc_prep', 'call_log_header', 'cancel_charge',
    'co_op_certificate', 'co_op_usage', 'comments_h', 'consumer_rebate',
    'counter_table', 'cpu_pickup', 'cst_errors', 'customer_service',                                                                            'cv_production_date_history', 'cvln_to_lncv', 'dbcr_master',
    'dealer_change_form', 'dealer_comments', 'dealer_credit_history',
    'dealer_file_location', 'dealer_file_location_financial', 'dealer_Magento',
    'dealer_organization', 'dealer_promo_cover', 'dealer_promo_liner',
    'dealer_references', 'dealer_sales_journal', 'dealer_same_company',
    'dealer_unique_pricing', 'deposit', 'discount', 'draft_productivity',
    'email_que', 'error_master', 'fabric', 'fax_docs', 'fax_print_dealer',
    'fax_que', 'fax_que_problems', 'file_type', 'flat_rates_h',
    'flat_rates_state_h', 'hardware_bya', 'hardware_h', 'hardware_upcharge',
    'inventory_hardware', 'inventory_history', 'inventory_in_shop',
    'inventory_out_history', 'inventory_results', 'Inventory_Returns',
    'language_translation', 'leads_consumers', 'leads_print_que',
    'liner_error_report', 'liner_error_report_action_history',
    'liner_error_report_action_master', 'liner_error_report_explanation_history',
    'lll_users', 'ln_above_grounds', 'ln_above_grounds_Old_pricing',
    'ln_bead_types', 'material', 'material_components', 'material_hardware',
    'material_product', 'menu_data', 'money_recieved', 'newcard', 'pfc_history',
    'plot_serial', 'po_materials', 'prep', 'prep_cpu_signature',
    'prep_file_location', 'prep_multi_bleeped', 'prep_ra_hardware',
    'prep_return', 'prepCAD', 'product', 'proforma', 'promo', 'promo_type',
    'Purchase_Order', 'que', 'RATimer', 'replacement_cover_request', 'rtn',
    'rtn_bluesheet', 'rtn_bluesheet_cm_type', 'rtn_bluesheet_explanation_history',
    'rtn_bluesheet_file', 'rtn_bluesheet_rtn_reason',
    'rtn_bluesheet_rtn_reason_category', 'rtn_bluesheet_type_return',
    'rtn_location_areas', 'Sales_call_log', 'sales_call_log_responses',
    'ship_via', 'slugs', 'special_discount', 'special_instructions',
    'standards', 'standards_shape', 'standards_treatment', 'state_tax',
    'stock_backup', 'stock_history', 'stock_history_copy', 'stock_linked_id',
    'stock_master', 'stock_pick', 'stock_special', 'syscon', 'tan_promo',
    'tech_bleep', 'tech_treat', 'treatment_h', 'treatment_zone_code',
    'user_productivity', 'vendor_purchases_orders', 'warranty_claims_address',
    'warranty_claims_type', 'warranty_header', 'warranty_header_preinvoiced',
    'web_deposit', 'worksheet_que',
]

tables       = failed_tables
failed       = []
total_rows   = 0
overall_start = time.time()

print(f"Re-running {len(tables)} failed tables...\n")

for table_name in tables:
    try:
        rows_migrated = migrate_table(table_name)
        total_rows += rows_migrated
    except Exception as e:
        print(f"  ERROR on {table_name}: {e}\n")
        failed.append(table_name)

overall_elapsed = time.time() - overall_start
overall_minutes = int(overall_elapsed // 60)
overall_seconds = overall_elapsed % 60

print(f"\n{'='*50}")
print(f"Re-run complete.")
print(f"Tables attempted : {len(tables)}")
print(f"Tables succeeded : {len(tables) - len(failed)}")
print(f"Tables failed    : {len(failed)}")
print(f"Total rows       : {total_rows:,}")
print(f"Total time       : {overall_minutes} minutes and {overall_seconds:.4f} seconds")

if failed:
    print(f"\nFailed tables:")
    for t in failed:
        print(f"  - {t}")