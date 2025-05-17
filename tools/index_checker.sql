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
