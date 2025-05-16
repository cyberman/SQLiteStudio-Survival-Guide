# Foreign Keys in SQLiteStudio

## Can you add a Foreign Key later?

Yes, **but only via rebuild**.

SQLite itself does NOT allow:
```sql
ALTER TABLE ADD FOREIGN KEY ...
```

SQLiteStudio *fakes* this by:
- Creating a new table
- Copying data
- Dropping the old one

You never see the process – but the result is a replaced table.
