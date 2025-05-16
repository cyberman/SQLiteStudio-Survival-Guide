# Foreign Key Safety Tool

Tool for checking foreign key safety in your database.

## Usage

Paste the following SQL in SQLiteStudio and run:

```sql
-- foreign_key_safety.sql
-- Detects tables with foreign key fields that are NOT enforced by an actual constraint

WITH fk_columns AS (
  SELECT m.name AS table_name, p.name AS column_name
  FROM sqlite_master AS m
  JOIN pragma_table_info(m.name) AS p
  WHERE p.name LIKE '%_id' AND m.type = 'table'
),
fk_constraints AS (
  SELECT DISTINCT m.name AS table_name, fk."from" AS column_name
  FROM sqlite_master AS m
  JOIN pragma_foreign_key_list(m.name) AS fk
)
SELECT fk_columns.*
FROM fk_columns
LEFT JOIN fk_constraints
  ON fk_columns.table_name = fk_constraints.table_name
 AND fk_columns.column_name = fk_constraints.column_name
WHERE fk_constraints.column_name IS NULL
ORDER BY fk_columns.table_name, fk_columns.column_name;

-- Purpose:
-- Helps find "foreign key looking" columns (like 'author_id') that lack FK constraints.
```

[⬇ Download raw SQL file](foreign_key_safety.sql)
