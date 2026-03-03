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
