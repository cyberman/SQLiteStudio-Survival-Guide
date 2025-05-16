# Commit Behavior

## Myth:

> A "commit" in SQLiteStudio just saves your changes.

## Reality:

A commit often means:
- SQLiteStudio generates a new CREATE TABLE statement
- It copies the data over
- Deletes the old table
- Renames the new table to the old name

SQLiteStudio does not ask before doing this. It does it silently.
