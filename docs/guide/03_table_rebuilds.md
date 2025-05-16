# Table Rebuilds

When you:
- Add NOT NULL
- Add UNIQUE
- Edit a data type
- Change a column name
- Add a FOREIGN KEY

SQLiteStudio performs a hidden rebuild:
- New table is generated
- Data is copied
- Old table is dropped
- New table is renamed
