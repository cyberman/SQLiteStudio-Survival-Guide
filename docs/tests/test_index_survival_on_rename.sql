-- TEST: Index Preservation on Column Rename

-- Step 1: Create table and index
CREATE TABLE test_city (
    id INTEGER PRIMARY KEY,
    name TEXT
);
CREATE INDEX idx_city_name ON test_city(name);

-- Step 2: Rename column via SQLiteStudio GUI: 'name' → 'city_name'

-- EXPECTED RESULT:
-- idx_city_name should be dropped unless manually recreated.

-- VERIFICATION:
-- Run:
-- SELECT name FROM sqlite_master WHERE type='index' AND tbl_name='test_city';
