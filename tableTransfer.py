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
print ("Connected to SQLA database.")

dst = pyodbc.connect(
    'DRIVER={ODBC Driver 18 for SQL Server};'
    'SERVER=Loop-DB01;'
    'DATABASE=LoopLoc_SchemaOnly;'
    'Trusted_Connection=yes;'
    'TrustServerCertificate=yes;'
)
print ("Connected to MSSQL database.")

def migrate_table(table_name):
    src_cur = src.cursor()
    dst_cur = dst.cursor()
    dst_cur.fast_executemany = True

    # has_identity = table_name.lower() in identity_tables

    print(f"Migrating {table_name}...")

    src_cur.execute(f"SELECT * FROM {table_name}")
    columns    = [col[0] for col in src_cur.description]
    col_list   = ', '.join(columns)
    params     = ', '.join(['?' for _ in columns])
    insert_sql = f"INSERT INTO {table_name} ({col_list}) VALUES ({params})"

# Wipe target table before importing
    dst_cur.execute(f"TRUNCATE TABLE {table_name}")
    dst.commit()

    if has_identity:
        dst_cur.execute(f"SET IDENTITY_INSERT {table_name} ON")

    start_time = time.time()

    batch_size = 500
    rows  = src_cur.fetchmany(batch_size)
    total = 0

    while rows:
        dst_cur.executemany(insert_sql, rows)
        dst.commit()
        total += len(rows)
        print(f"  {total} rows inserted...")
        rows = src_cur.fetchmany(batch_size)

    if has_identity:
        dst_cur.execute(f"SET IDENTITY_INSERT {table_name} OFF")

    dst.commit()

    elapsed = time.time() - start_time
    minutes = int(elapsed // 60)
    seconds = elapsed % 60
    print(f"  Done. {total} rows inserted in {minutes} minutes and {seconds:.4f} seconds.\n")


# --- Migrate tables one at a time for now ---
migrate_table('bank')