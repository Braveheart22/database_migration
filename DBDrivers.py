import pyodbc
for driver in pyodbc.drivers():
      print(driver)

for DSN in pyodbc.dataSources():
      print(DSN)

# Using a DSN, but providing a password as well
cnxn = pyodbc.connect('DSN=Catch22-17;UID=dba;PWD=sql34')
# For future MSSQL database
# conn = pyodbc.connect(
#     'DRIVER={ODBC Driver 18 for SQL Server};'
#     'SERVER=Loop-DB01;'
#     'DATABASE=LoopLoc_SchemaOnly;' # Subject to change when final db is up and running
#     'Trusted_Connection=yes;'
#       'TrustServerCertificate=yes;'
# )

# Create a cursor from the connection
cursor = cnxn.cursor()
# SELECTing data
# cursor.execute("SELECT * FROM prep WHERE prep_id = (SELECT max(prep_id) FROM prep)")
# row = cursor.fetchone()
# if row:
#     print(row)
# cursor.execute("SELECT TOP 25 user_name, department FROM lll_users")
# rows = cursor.fetchall()
# for row in rows:
#     print(row.user_name, row.department)

# INSERTing data
# cursor.execute("INSERT INTO bank(bank_id, name) VALUES ('bnk3', 'Bank Three')")
cursor.execute(
    "INSERT INTO bank (bank_id, name) VALUES (?, ?)",
    ("bnk3", "Bank Three")
)
cnxn.commit()

# DELETEing data
# cursor.execute("DELETE FROM bank WHERE bank_id = ?", 'bnk3')
# print(cursor.rowcount, 'rows deleted')
# cnxn.commit()