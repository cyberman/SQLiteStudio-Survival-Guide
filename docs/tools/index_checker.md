# Index Checker Tool

Analyze all indexes in your current SQLite database.

## Usage

Paste the following SQL in SQLiteStudio and run:

```sql
-- Show all indexes in the current SQLite database
SELECT name, tbl_name, sql
FROM sqlite_master
WHERE type = 'index'
ORDER BY tbl_name, name;
```

[⬇ Download raw SQL file](index_checker.sql)
