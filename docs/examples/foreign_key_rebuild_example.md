# Foreign Key Addition Example

How to add a foreign key constraint to an existing table via rebuild.

## Example SQL

```sql
-- Example: Add foreign key constraint by rebuilding table
CREATE TABLE new_child (
    id INTEGER PRIMARY KEY,
    parent_id INTEGER,
    FOREIGN KEY (parent_id) REFERENCES parent(id)
);

INSERT INTO new_child (id, parent_id)
SELECT id, parent_id
FROM child;

DROP TABLE child;
ALTER TABLE new_child RENAME TO child;
```

[⬇ Download raw SQL file](foreign_key_rebuild_example.sql)
