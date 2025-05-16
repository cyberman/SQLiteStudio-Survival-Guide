# Indexes and Constraints

SQLiteStudio can set:
- NOT NULL
- UNIQUE
- PRIMARY KEY
- INDEX

But beware:
- Setting them after table creation often causes silent rebuilds.
- If you're not watching, indexes can be lost during structural changes.
