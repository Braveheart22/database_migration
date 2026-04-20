# Database Migration Guide

Migrating a database from **SAP (Sybase) SQL Anywhere 9.0** to **Microsoft SQL Server 2025**

| | Source | Target |
|---|---|---|
| Server | Emmitt | LOOP-DB01 |
| Database | Smith | Loop-Loc_v1 |
| ODBC Driver | SQL Anywhere 17 | ODBC Driver 17 for SQL Server |
| Credentials | UID=dba / PWD=sql34 | Windows Authentication (Trusted_Connection) |

> **Note on "unloading" from SQL Anywhere:** All extraction is done by the Python scripts
> in this repository connecting directly to SQLA via pyodbc. There is no separate SQLA
> `dbunload` utility involved. The scripts use SQL queries against system catalog tables
> (`SYS.SYSTABLE`, `SYS.SYSPROCEDURE`, `SYS.SYSTRIGGER`, etc.) to pull schema and data.

---

## PREREQUISITES

These are one-time setup steps. Do them before running any migration scripts.

### 1. Install Python dependencies

```
pip install pyodbc
```

### 2. Install ODBC drivers

Both drivers must be installed on the machine running the scripts:

- **SQL Anywhere 17** — used to connect to the SQLA 9.0 source server
  - Verify: open ODBC Data Source Administrator → Drivers tab → confirm "SQL Anywhere 17" is listed
- **ODBC Driver 17 for SQL Server** — used to connect to the MSSQL target
  - Download from Microsoft if not installed

### 3. Configure ODBC DSNs

The migration scripts connect directly via connection strings (no DSN needed for the scripts
themselves). However, the application uses a DSN named **Catch22** to switch between databases
during the transition period.

Set up these three DSNs in ODBC Data Source Administrator:

| DSN Name | Driver | Points to |
|---|---|---|
| `Catch22` | (active one) | whichever DB the app is currently using |
| `Catch22-MSSQL` | ODBC Driver 17 for SQL Server | LOOP-DB01 / Loop-Loc_v1 |
| `Catch22-SQLA` | SQL Anywhere 17 | 192.168.250.34 / Smith |

Exactly one of `Catch22-MSSQL` or `Catch22-SQLA` should exist at any time (the "parked" one).
To switch the app between databases, run:

```
python toggle_catch22.py           # toggle active database
python toggle_catch22.py --status  # check current state without changing
```

> System DSNs (HKLM) require the script to be run as Administrator.

### 4. Enable SQL Server Mixed Mode Authentication

Required once so that SQL Server logins (Phase 5) work alongside Windows auth.

1. In SSMS, right-click the server → **Properties** → **Security** page
2. Set "Server authentication" to **SQL Server and Windows Authentication mode**
3. Click OK
4. **Restart the SQL Server service** — the change is not active until restarted
   - Right-click server in SSMS → Restart, or use SQL Server Configuration Manager

### 5. Verify connectivity

Before running any scripts, confirm both connections work:

```python
# Test SQLA connection
import pyodbc
src = pyodbc.connect('DRIVER={SQL Anywhere 17};HOST=192.168.250.34;SERVER=Emmitt;DATABASE=Smith;UID=dba;PWD=sql34;')
print(src.cursor().execute("SELECT count(*) FROM SYS.SYSTABLE").fetchone())

# Test MSSQL connection
dst = pyodbc.connect('DRIVER={ODBC Driver 17 for SQL Server};SERVER=LOOP-DB01;DATABASE=Loop-Loc_v1;Trusted_Connection=yes;')
print(dst.cursor().execute("SELECT @@VERSION").fetchone())
```

---

## PHASE 1 — SCHEMA SETUP

**Goal:** Create an empty SQL Server database with all tables matching the SQL Anywhere schema.

1. Drop and recreate the SQL Server database (clean slate):
   ```sql
   USE master;
   GO
   DROP DATABASE [Loop-Loc_v1];
   GO
   CREATE DATABASE [Loop-Loc_v1];
   GO
   ```

2. Run `tables.py` → generates `create_tables.sql`
   - Connects to SQLA and reads all DBA-owned table definitions from `SYS.SYSCOLUMN`
   - Translates SQLA data types to T-SQL equivalents
   - Output is ready to run in SSMS

3. Run `create_tables.sql` in SSMS

4. Run `compareTables.py` → must show 0 missing, 0 drift
   - Output sections:
     - **MISSING** — tables in SQLA but not in MSSQL
     - **EXTRA** — tables in MSSQL but not in SQLA
     - **DRIFT** — tables with column count or type differences:
       - `+ MISSING in MSSQL` — column exists in SQLA but was not created in MSSQL
       - `- EXTRA in MSSQL` — column exists in MSSQL but not in SQLA
   - If any MISSING or DRIFT → proceed to Phase 1A
   - If 0 issues → skip to Phase 2

---

## PHASE 1A — SCHEMA REMEDIATION

*Run only if Phase 1 Step 4 finds issues.*

5. Run `alterTables.py` → generates `alter_tables.sql`
   - Scans every table present in both databases
   - Generates `ALTER TABLE ... ADD` for each column in SQLA missing from MSSQL
   - AUTOINCREMENT columns are flagged with a `WARNING` comment and added as `INT` — verify manually

6. For any **MISSING** tables (in SQLA but not in MSSQL at all), run their `CREATE TABLE` DDL
   from `create_tables.sql` in SSMS

7. Run `alter_tables.sql` in SSMS

8. Re-run `compareTables.py` → confirm 0 missing, 0 drift before proceeding

---

## PHASE 2 — DATA MIGRATION

**Goal:** Copy all rows from every table in SQLA to MSSQL.

9. Run `allTableTransfer.py`
   - Creates a timestamped log: `migration_log_YYYYMMDD_HHMMSS.csv`
   - Columns: `Table`, `Status`, `Rows`, `Elapsed_sec`, `Error`
   - Log is flushed after every table — safe if the script crashes mid-run

10. Review the CSV log for failed tables
    - Check the `Error` column to understand why each table failed
    - Common causes:

      | Error code | Meaning |
      |---|---|
      | `42S22 Invalid column name` | Schema drift or wrong target database in connection string |
      | `23000 PK violation` | Duplicate or NULL primary key in source data |
      | `22007 datetime out of range` | Date value before 1753-01-01 in source data |

    - Investigate and resolve the root cause
    - Run `failedTableTransfer.py` — automatically reads `FAILED` rows from the most recent
      `migration_log_*.csv` and re-runs only those tables
    - Produces its own timestamped log for the re-run
    - Repeat until 0 failures (or remaining failures are understood and accepted)

---

## PHASE 3 — VALIDATION

11. Run `rowCountValidation.py` → compare row counts SQLA vs MSSQL
    - Every table must match before proceeding
    - Writes a timestamped `validation_log_YYYYMMDD_HHMMSS.csv`

---

## PHASE 4 — POST-MIGRATION HOUSEKEEPING

12. Run `fkConstraints.py` → generates `fk_constraints.sql`
    - Reads all DBA-owned FK relationships from SQL Anywhere
    - Generates `ALTER TABLE ... ADD CONSTRAINT ... FOREIGN KEY` statements for SQL Server
    - Handles composite (multi-column) FKs
    - Only connects to SQLA — no changes made to SQL Server

13. Run `fk_constraints.sql` in SSMS
    - Review any errors — FK failures typically mean a referenced row is missing in the parent
      table (data integrity issue in source data)

14. Set SQL Server to FULL recovery mode:
    ```sql
    ALTER DATABASE [Loop-Loc_v1] SET RECOVERY FULL;
    ```

15. Configure a backup schedule (SQL Server Agent job or maintenance plan)

---

## PHASE 5 — USER MIGRATION

16. Run `migrateUsers.py` → generates `create_users.sql`
    - Reads all non-system users from `SYS.SYSUSERPERM` in SQL Anywhere
    - Generates `CREATE LOGIN`, `CREATE USER`, and role assignments for each user
    - Default password for each user is set to their username (`CHECK_POLICY = OFF`)
    - Role mapping:
      - `dba_priv = Y` → `db_owner`
      - All others → `db_datareader` + `db_datawriter`
    - `IF NOT EXISTS` guards make the script safe to re-run
    - **`create_users.sql` is excluded from git (contains credentials)**

17. Run `create_users.sql` in SSMS

18. Notify users to change their passwords on first login

---

## PHASE 6 — VIEW MIGRATION

19. Run `extractViews.py` → generates `sqla_views_source.sql`
    - Extracts all DBA-owned view definitions from SQL Anywhere (`SYS.SYSTABLE` where
      `table_type = 'VIEW'`)
    - **Output is for reference only — will NOT run in SQL Server**
    - Key syntax differences to convert:

      | SQL Anywhere | SQL Server T-SQL |
      |---|---|
      | `STRING(a, b, c)` | `CONCAT(a, b, c)` or `a + b + c` |
      | `DATEFORMAT(d, fmt)` | `FORMAT(d, fmt)` or `CONVERT()` |
      | `TODAY()` | `CAST(GETDATE() AS DATE)` |
      | `NOW()` | `GETDATE()` |
      | `MONTHS(d1, d2)` | `DATEDIFF(MONTH, d1, d2)` |
      | `YEARS(d1, d2)` | `DATEDIFF(YEAR, d1, d2)` |
      | `MOD(a, b)` | `a % b` |
      | Backtick or double-quote identifiers | `[square brackets]` |

20. Create `create_views.sql` containing the converted T-SQL `CREATE VIEW` statements
    - One `GO` between each view (the exporter splits on `GO`)
    - Views that depend on other views must appear after the views they reference

21. Run `checkViewProgress.py` at any time to see DONE vs PENDING views
    - Compares DBA-owned views in SQLA against `sys.objects WHERE type = 'V'` in MSSQL

22. Run `exportViews.py` to deploy views to SQL Server
    - Reads `create_views.sql`
    - Skips views that already exist in MSSQL (`[SKIP]`)
    - Reports `[OK]` or `[ERROR]` for each view

---

## PHASE 7 — TRIGGER MIGRATION

23. Run `extractTriggers.py` → generates `sqla_triggers_source.sql`
    - Extracts all DBA-owned trigger definitions from SQL Anywhere
    - **Output is for reference only — will NOT run in SQL Server**
    - `BEFORE` triggers are flagged with a `WARNING` comment

24. Convert triggers to T-SQL — key syntax differences:

    | SQL Anywhere | SQL Server T-SQL |
    |---|---|
    | `BEFORE` trigger | `INSTEAD OF` trigger |
    | `AFTER` trigger | `AFTER` trigger |
    | `REFERENCING OLD AS old NEW AS new` | Uses `deleted` / `inserted` virtual tables |
    | `old.column_name` | `deleted.column_name` |
    | `new.column_name` | `inserted.column_name` |
    | `FOR EACH ROW` | (remove — SQL Server triggers are set-based) |
    | `IF...THEN...END IF` | `IF...BEGIN...END` |
    | `NOW()`, `TODAY()` | `GETDATE()` |
    | `\|\|` (string concat) | `+` |

    > **Note:** `BEFORE` triggers in SQLA can modify column values before the row is written.
    > SQL Server `INSTEAD OF` triggers replace the entire DML operation — review each `BEFORE`
    > trigger carefully before converting.

25. Run `checkTriggerProgress.py` at any time to see DONE vs PENDING triggers
    - `BEFORE` triggers are flagged in the PENDING list as a reminder

26. Test each trigger in SQL Server before deploying to production

27. Run `exportTriggers.py` → generates `create_triggers.sql`
    - Connects to SQL Server (not SQL Anywhere)
    - Exports all finished T-SQL triggers for go-live deployment

28. Run `create_triggers.sql` in SSMS on the production server

---

## PHASE 8 — STORED PROCEDURE & FUNCTION MIGRATION

29. Run `extractProcedures.py` → generates `sqla_procedures_source.sql`
    - Reads all DBA-owned stored procedures and functions from `SYS.SYSPROCEDURE`
    - **Output is for reference only — will NOT run in SQL Server**

30. Convert procedures and functions to T-SQL — key syntax differences:

    | SQL Anywhere | SQL Server T-SQL |
    |---|---|
    | `IF...THEN...END IF` | `IF...BEGIN...END` |
    | `LOOP...END LOOP` | `WHILE 1=1 BEGIN...END` |
    | `LEAVE` | `BREAK` |
    | `CALL proc()` | `EXEC proc` |
    | `SIGNAL` | `THROW` / `RAISERROR` |
    | `NOW()`, `TODAY()` | `GETDATE()` |
    | `\|\|` (string concat) | `+` |
    | `CREATE FUNCTION ... RETURNS` | Same in T-SQL; functions land in `dbo` schema by default |

    > **Important:** In SQLA, functions are owned by the `DBA` user and called as
    > `DBA.functionname()`. In MSSQL, `CREATE FUNCTION` creates them in the `dbo` schema.
    > See Phase 9 (Synonyms) for how to bridge this difference.

31. Run `checkProcedureProgress.py` at any time to see progress
    - Shows DONE / PENDING for each procedure and function
    - Shows `[S]` for each function that has a DBA schema synonym (see Phase 9)

32. Test each procedure and function in SQL Server before deploying to production

33. Run `exportProcedures.py` → generates `create_procedures.sql`
    - Connects to SQL Server (not SQL Anywhere)
    - Exports all finished T-SQL procedures and functions for go-live deployment

34. Run `create_procedures.sql` in SSMS on the production server

---

## PHASE 9 — SYNONYM SETUP (DBA Schema Bridge)

**Why synonyms are needed:**
PowerBuilder DataWindow SQL calls user-defined functions as `DBA.functionname()` because
that is how SQLA stores them (under the DBA user). In SQL Server, functions created with
`CREATE FUNCTION` land in the `dbo` schema. Without synonyms, all `DBA.functionname()`
calls will fail on SQL Server.

**Solution:** Create the `DBA` schema in SQL Server and add a synonym for each function
pointing to its `dbo` counterpart. Both databases then respond correctly to
`DBA.functionname()` calls without any changes to the DataWindow SQL.

35. Create the DBA schema in SQL Server (one-time):
    ```sql
    CREATE SCHEMA DBA;
    ```

36. For each migrated function, create a synonym:
    ```sql
    CREATE SYNONYM DBA.functionname FOR dbo.functionname;
    ```
    Repeat for every function. Example:
    ```sql
    CREATE SYNONYM DBA.dbf_get_price        FOR dbo.dbf_get_price;
    CREATE SYNONYM DBA.dbf_dealer_discount   FOR dbo.dbf_dealer_discount;
    -- ... one line per function
    ```

37. Verify synonym coverage with `checkProcedureProgress.py`
    - Functions with a synonym show `[S]` in the output
    - Functions without a synonym show only `[x]` (DONE but no synonym)
    - Target: every function should have `[x][S]`

    > Stored procedures do NOT need synonyms — they are called with `EXEC procname` in
    > application code, not via schema-qualified SQL in DataWindows.

---

## PHASE 10 — POWERBUILDER DATAWINDOW MIGRATION

PowerBuilder DataWindows contain embedded SQL in `.srd` source files. Many use SQLA-specific
syntax that must be converted to T-SQL before the application can connect to SQL Server.

The strategy is **dual-DB compatible**: convert syntax to forms that work on both SQLA 9 and
MSSQL simultaneously, so the app continues working on SQLA during the transition.

### Step A — Export PBLs to .srd files

In PowerBuilder IDE:
1. Right-click the PBL in the System Tree → **Export**
2. Export all DataWindow objects as `.srd` files to a working directory
3. For the `llPrep` PBL, export to `Powerbuilder\llPrep\`
4. Repeat for each PBL that needs migration

### Step B — Run the batch syntax converter

```
python Powerbuilder\convertSQLASyntax.py
```

- Processes all `.srd` files in the target directory
- Only modifies `retrieve=` blocks (leaves all other PB attributes untouched)
- Conversions performed (all dual-DB safe):

  | SQLA syntax | T-SQL equivalent |
  |---|---|
  | `IF expr THEN ... ENDIF` | `CASE WHEN expr THEN ... END` |
  | `IFNULL(x, y, z)` | `CASE WHEN x IS NULL THEN y ELSE z END` |
  | `string(x)` | `CAST(x AS VARCHAR(50))` |
  | `\|\|` | `+` |
  | `length(x)` | `LEN(x)` |
  | `locate(src, pat)` | `CHARINDEX(pat, src)` |
  | `today()` | `GETDATE()` |

- Backs up each file as `.srd.bak` before modifying
- Run `python Powerbuilder\convertSQLASyntax.py --help` for usage

### Step C — Fix forward alias references

SQLA allows referencing a `SELECT`-list alias in the same `SELECT` (forward alias).
SQL Server does not.

For each DataWindow with this pattern, the SQL must be restructured using either:
- A **subquery** or **CTE** that computes the aliased expression once, then references it
- A **SQL Server view** wrapping the logic (use this if PB's import parser rejects CTEs)

Run `checkProcedureProgress.py` to identify DWs that still have MSSQL errors after the
batch conversion.

### Step D — Add DBA prefix to function calls

After synonyms are set up (Phase 9), ensure all DataWindow SQL calls functions with the
`DBA.` prefix:

```
python Powerbuilder\addDBAPrefix.py                # process all .srd files in llPrep/
python Powerbuilder\addDBAPrefix.py <filepath>     # process a single file
```

- Fetches the function list dynamically from `sys.synonyms WHERE SCHEMA_NAME(schema_id) = 'DBA'`
  in SQL Server — no hardcoded list needed
- Handles three cases:
  - `functionname(` → `DBA.functionname(`
  - `dbo.functionname(` → `DBA.functionname(`
  - `DBA.functionname(` → left alone

> Add a synonym (Phase 9) and re-run `addDBAPrefix.py` — it picks up new functions automatically.

### Step E — Import .srd files back into PowerBuilder

1. In PowerBuilder IDE, right-click the PBL → **Import**
2. Select the modified `.srd` files
3. Rebuild the application and test against the SQL Server connection

### Step F — Switch the app to SQL Server for testing

```
python toggle_catch22.py
```

This renames the ODBC DSNs so the `Catch22` DSN (which the app uses) points to SQL Server.
Run again to switch back to SQL Anywhere.

### Known limitations (dual-DB)

| DataWindow | Issue | Status |
|---|---|---|
| `d_prep_generational` | Uses `list()` aggregate — works on SQLA, not on MSSQL | Acceptable for now; fix when migrating that feature to MSSQL |
| DWs in non-llPrep PBLs | 11 remaining MSSQL errors in other PBLs not yet exported | See `Powerbuilder\pb_migration_notes.md` for details |

---

## APPENDIX — Connection strings used in scripts

All scripts hard-code the following connection strings. If the server names, database names,
or credentials change, update these in each script.

**SQL Anywhere (source):**
```python
pyodbc.connect(
    'DRIVER={SQL Anywhere 17};'
    'HOST=192.168.250.34;'
    'SERVER=Emmitt;'
    'DATABASE=Smith;'
    'UID=dba;'
    'PWD=sql34;'
)
```

**SQL Server (target):**
```python
pyodbc.connect(
    'DRIVER={ODBC Driver 17 for SQL Server};'
    'SERVER=LOOP-DB01;'
    'DATABASE=Loop-Loc_v1;'
    'Trusted_Connection=yes;'
)
```

---

## APPENDIX — Script reference

| Script | What it does | Reads | Writes |
|---|---|---|---|
| `tables.py` | Extract table DDL from SQLA | SQLA | `create_tables.sql` |
| `compareTables.py` | Diff schema between SQLA and MSSQL | SQLA + MSSQL | console |
| `alterTables.py` | Generate ALTER TABLE for missing columns | SQLA + MSSQL | `alter_tables.sql` |
| `allTableTransfer.py` | Copy all table data SQLA → MSSQL | SQLA | MSSQL + `migration_log_*.csv` |
| `failedTableTransfer.py` | Re-run failed tables from last migration log | SQLA + last `migration_log_*.csv` | MSSQL + new `migration_log_*.csv` |
| `rowCountValidation.py` | Compare row counts SQLA vs MSSQL | SQLA + MSSQL | `validation_log_*.csv` |
| `fkConstraints.py` | Extract FK relationships from SQLA | SQLA | `fk_constraints.sql` |
| `migrateUsers.py` | Generate user/login scripts from SQLA | SQLA | `create_users.sql` |
| `extractViews.py` | Extract view definitions from SQLA | SQLA | `sqla_views_source.sql` |
| `checkViewProgress.py` | Compare views SQLA vs MSSQL | SQLA + MSSQL | console |
| `exportViews.py` | Deploy views to SQL Server | `create_views.sql` | MSSQL |
| `extractTriggers.py` | Extract trigger definitions from SQLA | SQLA | `sqla_triggers_source.sql` |
| `checkTriggerProgress.py` | Compare triggers SQLA vs MSSQL | SQLA + MSSQL | console |
| `exportTriggers.py` | Deploy triggers to SQL Server | `create_triggers.sql` | MSSQL |
| `extractProcedures.py` | Extract procedure/function definitions from SQLA | SQLA | `sqla_procedures_source.sql` |
| `checkProcedureProgress.py` | Compare procs/functions SQLA vs MSSQL; check synonyms | SQLA + MSSQL | console |
| `exportProcedures.py` | Deploy procedures/functions to SQL Server | `create_procedures.sql` | MSSQL |
| `toggle_catch22.py` | Switch app ODBC DSN between SQLA and MSSQL | Windows registry | Windows registry |
| `Powerbuilder\convertSQLASyntax.py` | Batch-convert SQLA syntax in .srd files | `.srd` files | `.srd` files (in-place) |
| `Powerbuilder\addDBAPrefix.py` | Prefix function calls with DBA. in .srd files | MSSQL + `.srd` files | `.srd` files (in-place) |
