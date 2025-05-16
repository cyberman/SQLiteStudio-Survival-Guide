# NOT NULL Constraint Rebuild Example

Demonstrates how to rebuild a table to add a NOT NULL constraint.

## Example SQL

```sql
-- Example: Table Rebuild Trigger via NOT NULL constraint

-- Initial table creation
CREATE TABLE cities (
    id INTEGER PRIMARY KEY,
    name TEXT
);

-- Insert sample data
INSERT INTO cities (id, name) VALUES (1, 'Berlin'), (2, 'Tokyo');

-- Now, using SQLiteStudio to make 'name' NOT NULL
-- will trigger a silent table rebuild under the hood

-- Expected result:
-- - a new table is created with NOT NULL enforced
-- - data is copied (if valid)
-- - old table is deleted and replaced
```

[⬇ Download raw SQL file](rebuild_not_null_example.sql)
