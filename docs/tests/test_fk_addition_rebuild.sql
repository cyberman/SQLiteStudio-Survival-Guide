-- TEST: Rebuild Trigger on Foreign Key Addition

-- Step 1: Create author/book tables
CREATE TABLE test_authors (
    id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE test_books (
    id INTEGER PRIMARY KEY,
    title TEXT,
    author_id INTEGER
);

-- Step 2: Add FK in SQLiteStudio GUI: author_id → authors.id

-- EXPECTED RESULT:
-- Full rebuild of 'test_books' table

-- VERIFICATION:
-- Observe DB file timestamp or rowid mismatch
