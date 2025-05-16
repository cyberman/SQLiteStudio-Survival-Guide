# Overview: What SQLiteStudio *Really* Does

SQLiteStudio is a powerful but deceptive GUI for managing SQLite databases.

This document is about what really happens under the hood – not what the interface suggests.

## Key facts:

- Almost every structural change triggers a full table rebuild.
- Commits are not simple "Save" operations – they may destroy and recreate tables.
- Foreign Keys appear to be editable later – but they actually require silent rebuilds.
- Indexes and constraints might get lost or regenerated without notice.
