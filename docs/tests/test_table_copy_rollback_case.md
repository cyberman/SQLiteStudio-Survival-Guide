# Table Copy Rollback Case Test

Test for rollback scenarios when copying tables.

## Test SQL

```sql
-- TEST: Cancelled Edit Should Preserve Original Table

-- Step 1: Create a table
CREATE TABLE test_notes (
    id INTEGER PRIMARY KEY,
    content TEXT
);

-- Step 2: Add data
INSERT INTO test_notes VALUES (1, 'Draft'), (2, 'Final');

-- Step 3: Begin structure edit in GUI (e.g., add new column), then CANCEL the dialog

-- EXPECTED RESULT:
-- No structure or data changes should persist
-- If table has been silently rebuilt, a bug has occurred

-- VERIFICATION:
-- SELECT sql FROM sqlite_master WHERE name = 'test_notes';
-- Should show no new columns
```

[⬇ Download raw SQL file](test_table_copy_rollback_case.sql)
