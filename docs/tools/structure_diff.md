# Structure Diff Tool

Find structural differences between two SQLite databases.

## Usage

Paste the following SQL in SQLiteStudio and run:

```sql
-- structure_diff.sql
-- Lists all tables and their column definitions

SELECT
  m.name AS table_name,
  p.cid,
  p.name AS column_name,
  p.type,
  p."notnull",
  p.dflt_value,
  p.pk
FROM
  sqlite_master AS m
JOIN
  pragma_table_info(m.name) AS p
WHERE
  m.type = 'table'
ORDER BY
  table_name, p.cid;
```

[⬇ Download raw SQL file](structure_diff.sql)
