# SQLiteStudio Behavior Test Cases

This folder contains `.sql` test scripts and documented test flows to verify SQLiteStudio behavior.

These are intended to simulate:
- Table rebuild scenarios
- Index loss
- Foreign key constraint handling
- GUI-triggered structural side effects

## Test Cases

- `test_index_survival_on_rename.sql`  
  → Rename a column and see if the index survives

- `test_fk_addition_rebuild.sql`  
  → Add a FK and verify full table rebuild

## How to Use

1. Execute the SQL scripts step-by-step inside SQLiteStudio
2. Perform the described GUI action
3. Observe side effects using `docs/tools/` helpers


- `test_not_null_commit_effect.sql`  
  → Observe behavior when enforcing NOT NULL on nullable data

- `test_table_copy_rollback_case.sql`  
  → Simulate canceling a structure change and verify rollback integrity
