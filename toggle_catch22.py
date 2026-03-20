"""
toggle_catch22.py
-----------------
Toggles the active 'Catch22' ODBC DSN between the SQL Anywhere and
SQL Server databases.

DSN naming convention
---------------------
  Catch22        -- the active DSN (what the application connects to)
  Catch22-SQLA   -- SQL Anywhere DSN while MSSQL is active
  Catch22-MSSQL  -- SQL Server DSN while SQLA is active

How it works
------------
  Exactly one of Catch22-SQLA or Catch22-MSSQL should exist at any time.
  That tells the script which database is currently "parked":

    Catch22-MSSQL exists  ->  app is on SQLA  ->  switch to MSSQL
      rename  Catch22        ->  Catch22-SQLA
      rename  Catch22-MSSQL  ->  Catch22

    Catch22-SQLA exists   ->  app is on MSSQL  ->  switch to SQLA
      rename  Catch22       ->  Catch22-MSSQL
      rename  Catch22-SQLA  ->  Catch22

Usage
-----
  python toggle_catch22.py           # toggle (requires admin for System DSNs)
  python toggle_catch22.py --status  # show current state without changing anything

Notes
-----
  - System DSNs (HKLM) require the script to be run as Administrator.
  - User DSNs (HKCU) do not require elevation.
  - The script checks both 32-bit and 64-bit ODBC registry paths.
  - The rename is not atomic: if interrupted mid-way, run again from a
    known state or fix manually in ODBC Data Source Administrator.
"""

import sys
import winreg

# ---------------------------------------------------------------------------
# Registry paths to check (64-bit and 32-bit ODBC hives)
# ---------------------------------------------------------------------------
ODBC_PATHS = [
    r"SOFTWARE\ODBC\ODBC.INI",
    r"SOFTWARE\WOW6432Node\ODBC\ODBC.INI",
]

HIVES = [
    (winreg.HKEY_LOCAL_MACHINE, "HKLM (System DSN)"),
    (winreg.HKEY_CURRENT_USER,  "HKCU (User DSN)"),
]

SOURCES_SUBKEY = "ODBC Data Sources"

# ---------------------------------------------------------------------------
# Helpers
# ---------------------------------------------------------------------------

def find_dsn(dsn_name):
    """
    Return (hive, odbc_path) for the first registry location where
    dsn_name exists, or (None, None) if not found.
    """
    for hive, _ in HIVES:
        for path in ODBC_PATHS:
            try:
                k = winreg.OpenKey(hive, f"{path}\\{dsn_name}")
                winreg.CloseKey(k)
                return hive, path
            except FileNotFoundError:
                continue
    return None, None


def read_key_values(hive, full_path):
    """Read all (name, data, type) triples from a registry key."""
    key = winreg.OpenKey(hive, full_path, 0, winreg.KEY_READ)
    values = []
    i = 0
    while True:
        try:
            values.append(winreg.EnumValue(key, i))
            i += 1
        except OSError:
            break
    winreg.CloseKey(key)
    return values


def rename_dsn(hive, odbc_path, old_name, new_name):
    """
    Rename an ODBC DSN registry entry:
      1. Copy all values from old_name key to new_name key.
      2. Update the 'ODBC Data Sources' index (driver name entry).
      3. Delete the old key.
    """
    old_key_path = f"{odbc_path}\\{old_name}"
    new_key_path = f"{odbc_path}\\{new_name}"
    src_path     = f"{odbc_path}\\{SOURCES_SUBKEY}"

    # 1. Copy values to new key
    values = read_key_values(hive, old_key_path)
    new_key = winreg.CreateKeyEx(hive, new_key_path, 0, winreg.KEY_WRITE)
    for val_name, val_data, val_type in values:
        winreg.SetValueEx(new_key, val_name, 0, val_type, val_data)
    winreg.CloseKey(new_key)

    # 2. Update ODBC Data Sources index
    src_key = winreg.OpenKey(hive, src_path, 0,
                             winreg.KEY_READ | winreg.KEY_WRITE)
    try:
        driver, _ = winreg.QueryValueEx(src_key, old_name)
    except FileNotFoundError:
        driver = ""
    winreg.SetValueEx(src_key, new_name, 0, winreg.REG_SZ, driver)
    try:
        winreg.DeleteValue(src_key, old_name)
    except FileNotFoundError:
        pass
    winreg.CloseKey(src_key)

    # 3. Delete old DSN key (flat key — no subkeys expected)
    winreg.DeleteKey(hive, old_key_path)

    print(f"  Renamed  '{old_name}'  ->  '{new_name}'")


def dsn_label(hive, path):
    """Return a readable location string for display."""
    hive_name = "HKLM" if hive == winreg.HKEY_LOCAL_MACHINE else "HKCU"
    arch = "32-bit" if "WOW6432Node" in path else "64-bit"
    return f"{hive_name} ({arch})"


# ---------------------------------------------------------------------------
# Detect current state
# ---------------------------------------------------------------------------

hive_active, path_active = find_dsn("Catch22")
hive_mssql,  path_mssql  = find_dsn("Catch22-MSSQL")
hive_sqla,   path_sqla   = find_dsn("Catch22-SQLA")

status_mode = "--status" in sys.argv

# ---------------------------------------------------------------------------
# Validate
# ---------------------------------------------------------------------------

if not hive_active:
    print("ERROR: DSN 'Catch22' not found.")
    print("       Create it in ODBC Data Source Administrator first.")
    sys.exit(1)

if hive_mssql and hive_sqla:
    print("ERROR: Both 'Catch22-MSSQL' and 'Catch22-SQLA' exist.")
    print("       Cannot determine which database is currently active.")
    print("       Resolve manually in ODBC Data Source Administrator.")
    sys.exit(1)

if not hive_mssql and not hive_sqla:
    print("ERROR: Neither 'Catch22-MSSQL' nor 'Catch22-SQLA' found.")
    print("       Create one of them in ODBC Data Source Administrator,")
    print("       then run this script to register the parked state.")
    sys.exit(1)

# ---------------------------------------------------------------------------
# Report current state
# ---------------------------------------------------------------------------

if hive_mssql:
    current_db = "SQL Anywhere"
    target_db  = "SQL Server"
else:
    current_db = "SQL Server"
    target_db  = "SQL Anywhere"

print(f"Active DSN  : Catch22  [{dsn_label(hive_active, path_active)}]")
print(f"Current DB  : {current_db}")
print(f"Parked DSN  : {'Catch22-MSSQL' if hive_mssql else 'Catch22-SQLA'}")
print()

if status_mode:
    print("(--status mode: no changes made)")
    sys.exit(0)

# ---------------------------------------------------------------------------
# Toggle
# ---------------------------------------------------------------------------

print(f"Switching to: {target_db}")
print()

if hive_mssql:
    # Currently on SQLA -> activate MSSQL
    rename_dsn(hive_active, path_active, "Catch22",       "Catch22-SQLA")
    rename_dsn(hive_mssql,  path_mssql,  "Catch22-MSSQL", "Catch22")
else:
    # Currently on MSSQL -> activate SQLA
    rename_dsn(hive_active, path_active, "Catch22",      "Catch22-MSSQL")
    rename_dsn(hive_sqla,   path_sqla,   "Catch22-SQLA", "Catch22")

print()
print(f"Done. 'Catch22' now points to {target_db}.")
print("Restart the application to use the new connection.")
