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
            dbaauth,
            resourceauth
        FROM SYS.SYSUSERPERM
        WHERE user_name NOT IN ('SYS', 'PUBLIC', 'dbo', 'DBA')
        ORDER BY user_name
    """)
    return cur.fetchall()

def get_passwords(conn):
    """Returns {user_name_upper: password} from lll_users (case-insensitive lookup)."""
    cur = conn.cursor()
    cur.execute("SELECT user_name, password FROM lll_users")
    return {row.user_name.upper(): row.password for row in cur.fetchall()}

users     = get_users(src)
passwords = get_passwords(src)
src.close()

print(f"Found {len(users)} user(s). Password lookup: {len(passwords)} entries in lll_users.\n")

with open('create_users.sql', 'w') as f:
    f.write("-- Generated user migration scripts for SQL Server\n")
    f.write("-- Source: SQL Anywhere (Smith)\n")
    f.write("-- Passwords sourced from lll_users; fallback to username if no match\n")
    f.write("-- IMPORTANT: Users should change passwords after first login\n\n")

    f.write("USE [Loop-Loc_v1];\nGO\n\n")

    for user_name, dbaauth, resourceauth in users:
        raw_pwd    = passwords.get(user_name.upper())
        safe_pwd   = (raw_pwd or user_name).replace("'", "''")
        pwd_source = 'lll_users' if raw_pwd else 'fallback (username)'

        print(f"  {user_name:<30} {'DBA' if dbaauth == 'Y' else 'user':<6}  pwd: {pwd_source}")

        f.write(f"-- {user_name}  ({'DBA' if dbaauth == 'Y' else 'user'})  pwd: {pwd_source}\n")

        # Create server-level login
        f.write(f"IF NOT EXISTS (SELECT 1 FROM sys.server_principals WHERE name = N'{user_name}')\n")
        f.write(f"BEGIN\n")
        f.write(f"    CREATE LOGIN [{user_name}] WITH PASSWORD = N'{safe_pwd}',\n")
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
        if dbaauth == 'Y':
            f.write(f"ALTER ROLE [db_owner] ADD MEMBER [{user_name}];\n")
        else:
            f.write(f"ALTER ROLE [db_datareader] ADD MEMBER [{user_name}];\n")
            f.write(f"ALTER ROLE [db_datawriter] ADD MEMBER [{user_name}];\n")

        f.write(f"GO\n\n")

print(f"\nDone. {len(users)} user(s) written to create_users.sql")
