-- Example: Index Loss on Structural Edit

-- Create table with index
CREATE TABLE cities (
    id INTEGER PRIMARY KEY,
    name TEXT
);
CREATE INDEX idx_city_name ON cities(name);

-- Add some data
INSERT INTO cities VALUES (1, 'Paris'), (2, 'Seoul');

-- Now, edit the column name in SQLiteStudio (e.g., rename 'name' to 'city_name')
-- This will trigger a rebuild and silently DROP your index unless manually restored.
