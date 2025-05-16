# Index Checker Tool

Analyze all indexes in your current SQLite database.

## Usage

Paste the following SQL in SQLiteStudio and run:

```sql
-- index_checker.sql
-- Lists all user-defined indexes in the current SQLite database

SELECT
  name AS index_name,
  tbl_name AS table_name,
  sql AS definition
FROM
  sqlite_master
WHERE
  type = 'index'
  AND name NOT LIKE 'sqlite_%'
ORDER BY table_name, name;
```

[⬇ Download raw SQL file](index_checker.sql)
