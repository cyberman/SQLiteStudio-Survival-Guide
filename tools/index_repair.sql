-- index_repair.sql
-- Lists missing indexes for any FK or commonly used fields (e.g., *_id)

SELECT
  m.name AS table_name,
  p.name AS column_name
FROM
  sqlite_master AS m
JOIN
  pragma_table_info(m.name) AS p
WHERE
  p.name LIKE '%_id'
  AND NOT EXISTS (
    SELECT 1
    FROM sqlite_master AS idx
    WHERE idx.type = 'index'
      AND idx.tbl_name = m.name
      AND idx.sql LIKE '%' || p.name || '%'
  )
ORDER BY
  m.name, p.name;

-- Purpose:
-- Helps suggest missing indexes on commonly joined fields (e.g., *_id columns).
