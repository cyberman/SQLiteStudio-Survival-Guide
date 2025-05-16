# Test Result: Foreign Key Addition Rebuild

**Test File:** test_fk_addition_rebuild.sql  
**Tester:** cyberman  
**Date:** 2025-05-16  
**Environment:** SQLiteStudio 3.4.4, Linux Mint 22.1

---

## Summary

After manually adding a FOREIGN KEY to `author_id` referencing `authors.id` via GUI:

- GUI accepted the change
- File timestamp of database changed
- Rowid of table `books` regenerated
- Indexes preserved
- Table `books` was rebuilt

---

## Visual Evidence

🖼️ Screenshot before: _fk_addition_before.png_  
🖼️ Screenshot after: _fk_addition_after.png_

## Additional Notes

```
SELECT rowid, * FROM books;
-- IDs differ from pre-rebuild if rowids were used originally
```

---

✅ **Confirmed**: Foreign key addition causes full rebuild in SQLiteStudio GUI
