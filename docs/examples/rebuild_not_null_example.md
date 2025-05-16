# NOT NULL Constraint Rebuild Example

Demonstrates how to rebuild a table to add a NOT NULL constraint.

## Example SQL

```sql
-- Example: Add NOT NULL constraint by rebuilding table
CREATE TABLE new_table (
    id INTEGER PRIMARY KEY,
    data TEXT NOT NULL
);

INSERT INTO new_table (id, data)
SELECT id, data
FROM old_table;

DROP TABLE old_table;
ALTER TABLE new_table RENAME TO old_table;
```

[⬇ Download raw SQL file](rebuild_not_null_example.sql)
