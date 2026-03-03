# Database Migration

Migrating a database from SAP (Sybase) SQL Anywhere 9.0 to Microsoft SQL Server 2025

# PHASE 1 - SCHEMA SETUP

1. Drop and recreate the SQL Server database (clean slate)
   1. USE master;
   2. Go
   3. DROP {Loop-Loc database name}
   4. Go
   5. CREATE {Loop-Loc database name}
   6. GO
2. Run tables.py → generates create_tables.sql
3. Run create_tables.sql in SSMS
4. Run compareTables.py → must show 0 missing, 0 drift
   If issues found → GOTO Phase 1A

# PHASE 1A - SCHEMA REMEDIATION (run only if Phase 1 Step 4 finds issues)

5. Run alterTables.py → generates alter_tables.sql (adds missing columns to existing tables)
6. Run missing table DDL for any MISSING tables in SSMS
7. Run alter_tables.sql in SSMS
8. Re-run compareTables.py → confirm clean before proceeding

# PHASE 2 - DATA MIGRATION

9. Run allTableTransfer.py
10. Review failed tables list
    If failures → investigate, fix, re-run for failed tables only
    Repeat until 0 failures (or failures are understood/accepted)
    1. Review the log file for the list of reasons that the tables failed.
    2. USe the failedTableTransfer.py file against the log file migration*log*\*.csv to run the failed tables again.

# PHASE 3 - VALIDATION

11. Run rowCountValidation.py → compare row counts SQLA vs MSSQL
    Every table must match

# PHASE 4 - POST MIGRATION

12. Run fkConstraints.py → generates FK constraint SQL
13. Run FK constraint SQL in SSMS
14. Set SQL Server to FULL recovery mode
15. Configure backup schedule
