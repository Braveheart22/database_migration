import pyodbc

src = pyodbc.connect(
    'DRIVER={SQL Anywhere 17};'
    'HOST=192.168.250.34;'
    'SERVER=Emmitt;'
    'DATABASE=Smith;'
    'UID=dba;'
    'PWD=sql34;'
)

# System accounts that exist in every SQLA database - do not migrate
EXCLUDE_USERS = {'SYS', 'PUBLIC', 'dbo', 'DBA'}

def get_users(conn):
    cur = conn.cursor()
    cur.execute("""
        SELECT
            user_name,
            dba_priv,
            resource_priv,
            connect_priv
        FROM SYS.SYSUSERPERM
        WHERE user_name NOT IN ('SYS', 'PUBLIC', 'dbo', 'DBA')
        ORDER BY user_name
    """)
    return cur.fetchall()

users = get_users(src)
print(f"Found {len(users)} user(s). Generating SQL...\n")

with open('create_users.sql', 'w') as f:
    f.write("-- Generated user migration scripts for SQL Server\n")
    f.write("-- Source: SQL Anywhere (Smith)\n")
    f.write("-- Default password for each user is their username\n")
    f.write("-- IMPORTANT: Users should change passwords after first login\n\n")

    f.write("USE [Loop-Loc_v1];\nGO\n\n")

    for user_name, dba_priv, resource_priv, connect_priv in users:
        role = 'db_owner' if dba_priv == 'Y' else 'db_datareader / db_datawriter'
        print(f"  {user_name:<30} {'DBA' if dba_priv == 'Y' else 'user'}")

        f.write(f"-- {user_name}  ({'DBA' if dba_priv == 'Y' else 'user'})\n")

        # Create server-level login
        f.write(f"IF NOT EXISTS (SELECT 1 FROM sys.server_principals WHERE name = N'{user_name}')\n")
        f.write(f"BEGIN\n")
        f.write(f"    CREATE LOGIN [{user_name}] WITH PASSWORD = N'{user_name}',\n")
        f.write(f"        CHECK_POLICY = OFF, CHECK_EXPIRATION = OFF;\n")
        f.write(f"END\n")
        f.write(f"GO\n")

        # Create database user mapped to the login
        f.write(f"IF NOT EXISTS (SELECT 1 FROM sys.database_principals WHERE name = N'{user_name}')\n")
        f.write(f"BEGIN\n")
        f.write(f"    CREATE USER [{user_name}] FOR LOGIN [{user_name}];\n")
        f.write(f"END\n")
        f.write(f"GO\n")

        # Assign roles based on SQLA privileges
        if dba_priv == 'Y':
            f.write(f"ALTER ROLE [db_owner] ADD MEMBER [{user_name}];\n")
        else:
            f.write(f"ALTER ROLE [db_datareader] ADD MEMBER [{user_name}];\n")
            f.write(f"ALTER ROLE [db_datawriter] ADD MEMBER [{user_name}];\n")

        f.write(f"GO\n\n")

print(f"\nDone. {len(users)} user(s) written to create_users.sql")
src.close()
