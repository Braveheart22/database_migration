# Database Migration

Migrating a database from SAP (Sybase) SQL Anywhere 9.0 to Microsoft SQL Server 2025

# PHASE 1 - SCHEMA SETUP

1. Drop and recreate the SQL Server database (clean slate)
   ```sql
   USE master;
   GO
   DROP DATABASE {Loop-Loc database name};
   GO
   CREATE DATABASE {Loop-Loc database name};
   GO
   ```
2. Run `tables.py` → generates `create_tables.sql`
3. Run `create_tables.sql` in SSMS
4. Run `compareTables.py` → must show 0 missing, 0 drift
   - Output includes three sections: MISSING tables, EXTRA tables, and DRIFT tables
   - For each DRIFT table, column-level detail is shown:
     - `+ MISSING in MSSQL` — column exists in SQLA but was not created in MSSQL
     - `- EXTRA in MSSQL` — column exists in MSSQL but not in SQLA
   - If any MISSING or DRIFT found → GOTO Phase 1A

# PHASE 1A - SCHEMA REMEDIATION (run only if Phase 1 Step 4 finds issues)

5. Run `alterTables.py` → generates `alter_tables.sql`
   - Scans every table present in both databases
   - Generates `ALTER TABLE ... ADD` for each column in SQLA missing from MSSQL
   - AUTOINCREMENT columns are flagged with a `WARNING` comment and added as `INT` — verify manually
6. For any MISSING tables (in SQLA but not in MSSQL at all), run their `CREATE TABLE` DDL from `create_tables.sql` in SSMS
7. Run `alter_tables.sql` in SSMS
8. Re-run `compareTables.py` → confirm 0 missing, 0 drift before proceeding

# PHASE 2 - DATA MIGRATION

9. Run `allTableTransfer.py`
   - Creates a timestamped log: `migration_log_YYYYMMDD_HHMMSS.csv`
   - Columns: `Table`, `Status`, `Rows`, `Elapsed_sec`, `Error`
   - Log is flushed after every table — safe if the script crashes mid-run
10. Review the CSV log for failed tables
    - Check the `Error` column to understand why each table failed
    - Common causes:
      - `42S22 Invalid column name` — schema drift or wrong target database in connection string
      - `23000 PK violation` — duplicate or NULL primary key in source data
      - `22007 datetime out of range` — date value before 1753-01-01 in source data
    - Investigate and resolve the root cause
    - Run `failedTableTransfer.py` — automatically reads `FAILED` rows from the most recent `migration_log_*.csv` and re-runs those tables only
    - Produces its own timestamped log for the re-run
    - Repeat until 0 failures (or remaining failures are understood and accepted)

# PHASE 3 - VALIDATION

11. Run `rowCountValidation.py` → compare row counts SQLA vs MSSQL
    - Every table must match before proceeding
    - Writes a timestamped `validation_log_YYYYMMDD_HHMMSS.csv`

# PHASE 4 - POST MIGRATION

12. Run `fkConstraints.py` → generates `fk_constraints.sql`
    - Reads all DBA-owned FK relationships from SQL Anywhere
    - Generates `ALTER TABLE ... ADD CONSTRAINT ... FOREIGN KEY` statements for SQL Server
    - Handles composite (multi-column) FKs
    - Only connects to SQLA — no changes made to SQL Server
13. Run `fk_constraints.sql` in SSMS
    - Review any errors — FK failures typically mean a referenced row is missing in the parent table (data integrity issue in source data)
14. Set SQL Server to FULL recovery mode
15. Configure backup schedule

# PHASE 5 - USER MIGRATION

16. Run `migrateUsers.py` → generates `create_users.sql`
    - Reads all non-system users from `SYS.SYSUSERPERM` in SQL Anywhere
    - Generates `CREATE LOGIN`, `CREATE USER`, and role assignments for each user
    - Default password for each user is set to their username (`CHECK_POLICY = OFF`)
    - Role mapping:
      - `dba_priv = Y` → `db_owner`
      - All others → `db_datareader` + `db_datawriter`
    - `IF NOT EXISTS` guards make the script safe to re-run
    - `create_users.sql` is excluded from git (contains credentials)
17. Run `create_users.sql` in SSMS
18. Notify users to change their passwords on first login

# PHASE 6 - TRIGGER MIGRATION

19. Run `extractTriggers.py` → generates `sqla_triggers_source.sql`
    - Extracts all DBA-owned trigger definitions from SQL Anywhere
    - Output is for reference only — will NOT run in SQL Server
    - BEFORE triggers are flagged with a WARNING comment
20. Convert triggers to T-SQL — key syntax differences:

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

    - **Note:** `BEFORE` triggers in SQL Anywhere can modify column values before the row is written.
      SQL Server `INSTEAD OF` triggers work differently — they replace the entire DML operation.
      Review each BEFORE trigger carefully before converting.
21. Run `checkTriggerProgress.py` at any time to see DONE vs PENDING triggers
    - BEFORE triggers are flagged in the PENDING list as a reminder
22. Test each trigger in SQL Server before deploying to production
23. Run `exportTriggers.py` → generates `create_triggers.sql`
    - Connects to SQL Server (not SQL Anywhere)
    - Exports all finished T-SQL triggers for go-live deployment
24. Run `create_triggers.sql` in SSMS on the production server

# PHASE 7 - STORED PROCEDURE MIGRATION

25. Run `extractProcedures.py` → generates `sqla_procedures_source.sql`
    - Reads all DBA-owned stored procedures from SQL Anywhere (178 total)
    - Output is for reference only — will NOT run in SQL Server
26. Convert procedures to T-SQL — key syntax differences:

    | SQL Anywhere | SQL Server T-SQL |
    |---|---|
    | `IF...THEN...END IF` | `IF...BEGIN...END` |
    | `LOOP...END LOOP` | `WHILE` |
    | `LEAVE` | `BREAK` |
    | `CALL proc()` | `EXEC proc` |
    | `SIGNAL` | `THROW` / `RAISERROR` |
    | `NOW()`, `TODAY()` | `GETDATE()` |
    | `\|\|` (string concat) | `+` |

27. Run `checkProcedureProgress.py` at any time to see DONE vs PENDING procedures
28. Test each procedure in SQL Server before deploying to production
29. Run `exportProcedures.py` → generates `create_procedures.sql`
    - Connects to SQL Server (not SQL Anywhere)
    - Exports all finished T-SQL procedures for go-live deployment
30. Run `create_procedures.sql` in SSMS on the production server
