import pyodbc
from collections import OrderedDict

src = pyodbc.connect(
    'DRIVER={SQL Anywhere 17};'
    'HOST=192.168.250.34;'
    'SERVER=Emmitt;'
    'DATABASE=Smith;'
    'UID=dba;'
    'PWD=sql34;'
)

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

def get_foreign_keys(conn):
    cur = conn.cursor()
    cur.execute("""
        SELECT
            fk.role,
            ct.table_name  AS child_table,
            cc.column_name AS child_column,
            pt.table_name  AS parent_table,
            pc.column_name AS parent_column,
            fkcol.foreign_column_id
        FROM SYS.SYSFOREIGNKEY  fk
        JOIN SYS.SYSTABLE        ct    ON fk.foreign_table_id       = ct.table_id
        JOIN SYS.SYSTABLE        pt    ON fk.primary_table_id        = pt.table_id
        JOIN SYS.SYSFKCOL        fkcol ON fk.foreign_table_id        = fkcol.foreign_table_id
                                      AND fk.foreign_key_id          = fkcol.foreign_key_id
        JOIN SYS.SYSCOLUMN       cc    ON fkcol.foreign_table_id     = cc.table_id
                                      AND fkcol.foreign_column_id    = cc.column_id
        JOIN SYS.SYSCOLUMN       pc    ON fk.primary_table_id        = pc.table_id
                                      AND fkcol.primary_column_id    = pc.column_id
        JOIN SYS.SYSUSERPERM     u     ON ct.creator                 = u.user_id
        WHERE u.user_name = 'DBA'
        ORDER BY ct.table_name, fk.role, fkcol.foreign_column_id
    """)
    return cur.fetchall()

# --- Group FK columns by (child_table, fkeyname) preserving column order ---
rows    = get_foreign_keys(src)
fk_dict = OrderedDict()
exclude = {e.lower() for e in EXCLUDE_TABLES}

for fkeyname, child_table, child_col, parent_table, parent_col, seq in rows:
    if child_table.lower() in exclude or parent_table.lower() in exclude:
        continue
    key = (child_table, fkeyname)
    if key not in fk_dict:
        fk_dict[key] = {
            'child_table':  child_table,
            'parent_table': parent_table,
            'child_cols':   [],
            'parent_cols':  [],
        }
    fk_dict[key]['child_cols'].append(child_col)
    fk_dict[key]['parent_cols'].append(parent_col)

# --- Generate SQL ---
fk_count = len(fk_dict)
print(f"Found {fk_count} foreign key constraint(s). Generating SQL...\n")

with open('fk_constraints.sql', 'w') as f:
    f.write("-- Generated FK constraint scripts for SQL Server\n")
    f.write("-- Source: SQL Anywhere (Smith)\n")
    f.write("-- Run AFTER data migration and row count validation are complete\n\n")

    for (child_table, fkeyname), fk in fk_dict.items():
        child_cols  = ', '.join(f'[{c}]' for c in fk['child_cols'])
        parent_cols = ', '.join(f'[{c}]' for c in fk['parent_cols'])

        stmt = (
            f"ALTER TABLE [dbo].[{child_table}]\n"
            f"    ADD CONSTRAINT [{fkeyname}]\n"
            f"    FOREIGN KEY ({child_cols})\n"
            f"    REFERENCES [dbo].[{fk['parent_table']}] ({parent_cols});\n"
            f"GO\n\n"
        )
        f.write(stmt)
        print(f"  [{child_table}].({child_cols})"
              f" -> [{fk['parent_table']}].({parent_cols})"
              f"  -- {fkeyname}")

print(f"\nDone. {fk_count} constraint(s) written to fk_constraints.sql")
src.close()
