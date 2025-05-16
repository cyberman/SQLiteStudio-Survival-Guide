# Foreign Key Addition Example

How to add a foreign key constraint to an existing table via rebuild.

## Example SQL

```sql
-- Example: Foreign Key Addition Triggers Rebuild

-- Initial tables
CREATE TABLE authors (
    id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE books (
    id INTEGER PRIMARY KEY,
    title TEXT,
    author_id INTEGER
);

-- Insert sample data
INSERT INTO authors (id, name) VALUES (1, 'Asimov'), (2, 'Murakami');
INSERT INTO books (id, title, author_id) VALUES (1, 'Foundation', 1), (2, 'Kafka on the Shore', 2);

-- Now, if you add a FOREIGN KEY to books.author_id referencing authors.id via GUI,
-- SQLiteStudio performs a rebuild behind the scenes.

-- No ALTER TABLE ... ADD FOREIGN KEY is possible directly in SQLite.
```

[⬇ Download raw SQL file](foreign_key_rebuild_example.sql)
