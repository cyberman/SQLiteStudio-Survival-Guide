# Troubleshooting

### "I added a FK but it's not in my SQL export!"

→ SQLiteStudio sometimes forgets to include FK definitions unless a full export is triggered.

### "My indexes disappeared after editing a column"

→ Table was silently rebuilt. Check the index list manually.

### "How do I know if a commit rewrote my table?"

→ Check file timestamp or size – a rebuild causes a rewrite.
