-- TEST: Table Rebuild on Adding NOT NULL Constraint

-- Step 1: Create a simple table without NOT NULL
CREATE TABLE test_users (
    id INTEGER PRIMARY KEY,
    email TEXT
);

-- Step 2: Add some data
INSERT INTO test_users (id, email) VALUES (1, 'a@example.com'), (2, NULL);

-- Step 3: Attempt to set 'email' column as NOT NULL via GUI

-- EXPECTED RESULT:
-- Rebuild is triggered
-- GUI should warn about existing NULL values
-- Depending on GUI version, change might be blocked or data lost

-- VERIFICATION:
-- Run:
-- SELECT * FROM test_users WHERE email IS NULL;
