"""Check if 'file' column exists in prep_file_location in SQL Server."""
import pyodbc

dst = pyodbc.connect(
    'DRIVER={ODBC Driver 17 for SQL Server};'
    'SERVER=LOOP-DB01;'
    'DATABASE=Loop-Loc_v1;'
    'Trusted_Connection=yes;'
)
cur = dst.cursor()

# Check prep_file_location columns
print("=== prep_file_location columns ===")
cur.execute("""
    SELECT COLUMN_NAME, DATA_TYPE
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_NAME = 'prep_file_location'
    ORDER BY ORDINAL_POSITION
""")
for row in cur.fetchall():
    print(f"  {row[0]:40s} {row[1]}")

print()
print("=== rtn_bluesheet_file columns ===")
cur.execute("""
    SELECT COLUMN_NAME, DATA_TYPE
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_NAME = 'rtn_bluesheet_file'
    ORDER BY ORDINAL_POSITION
""")
for row in cur.fetchall():
    print(f"  {row[0]:40s} {row[1]}")

dst.close()
