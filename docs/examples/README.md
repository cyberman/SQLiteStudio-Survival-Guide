# Examples – SQLiteStudio Behavior Triggers

This folder contains minimal `.sql` snippets that demonstrate:

- When table rebuilds happen silently
- Which operations affect structure
- Safe and unsafe actions within SQLiteStudio

---

## Included

- `rebuild_not_null_example.sql`  
  → Shows how adding NOT NULL via GUI triggers a full rebuild


- `foreign_key_rebuild_example.sql`  
  → Shows how adding a foreign key triggers a rebuild

- `index_loss_example.sql`  
  → Demonstrates how editing column names may silently drop indexes
