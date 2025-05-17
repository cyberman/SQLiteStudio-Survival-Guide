#!/bin/bash
# sqlite_commit_watch.sh
# Watches the modification timestamp of a SQLite file

DB="$1"

if [ -z "$DB" ]; then
  echo "Usage: $0 database.sqlite"
  exit 1
fi

echo "Watching file: $DB"
stat -c "Last modified: %y" "$DB"

echo "Waiting for changes..."
while true; do
  inotifywait -e modify "$DB" >/dev/null 2>&1
  echo "Modified: $(date)"
  stat -c "New timestamp: %y" "$DB"
done
