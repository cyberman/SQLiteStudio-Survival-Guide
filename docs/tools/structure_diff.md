# Structure Diff Tool

Find structural differences between two SQLite databases.

## Usage

Paste the following SQL in SQLiteStudio and run:

```sql
-- Example SQL for comparing table structure between two SQLite databases
SELECT a.name AS table_name
FROM main.sqlite_master a
LEFT JOIN attached_db.sqlite_master b ON a.name = b.name
WHERE a.type='table' AND b.name IS NULL;
```

[⬇ Download raw SQL file](structure_diff.sql)
