# Tools for SQLiteStudio Verification

This directory contains small, focused tools to help validate or inspect SQLiteStudio behavior.

## Tools

- `sqlite_commit_watch.sh`  
  → Bash script that watches when a SQLite file is modified (useful after GUI commits)

- `index_checker.sql`  
  → Lists all user-created indexes, useful before/after table edits

- `structure_diff.sql`  
  → Shows table structure (columns, types, constraints) – used for export comparisons

## Usage

These tools are designed to be simple and platform-portable (where possible).


- `foreign_key_safety.sql`  
  → Detects *_id fields that aren't backed by actual FOREIGN KEY constraints

- `index_repair.sql`  
  → Lists likely important fields that are missing indexes (e.g., *_id joins)
