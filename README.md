
# SQLiteStudio Survival Guide

**Welcome to the SQLiteStudio Survival Guide**  
_Independently verified. Field-tested. For survivors, not spectators._

---

## What is this?

This is an unofficial, practical manual for SQLiteStudio power users and anyone who wants to go beyond the official documentation.  
Here you will find real-world workflows, bug workarounds, and field-proven advice – all independently verified by hands-on experience.

- 📘 Minimal theory, maximal practice
- 🔍 Troubleshooting with screenshots, annotated logs, and reproducible steps
- 💡 Tools, example scripts, and test cases for SQLiteStudio edge cases

---

## Structure

- **Guide:**  
  Walkthroughs and essential topics for daily SQLiteStudio work.  
  See: [`guide/`](guide/)

- **Examples:**  
  SQL snippets and data migration templates.  
  See: [`examples/`](examples/)

- **Tools:**  
  Scripts and helper utilities for database analysis and troubleshooting.  
  See: [`tools/`](tools/)

- **Tests:**  
  Field-tested procedures for reproducing and fixing real SQLiteStudio issues.  
  See: [`tests/`](tests/)

- **Archive:**  
  Manuals, change logs, and historic documentation.  
  See: [`archive/`](archive/)

---

## Contributing

Found a pitfall, a workaround, or a survival trick?  
Open a pull request or [create an issue](https://github.com/cyberman/SQLiteStudio-Survival-Guide/issues) – all contributions are welcome!

---

## License

This project is licensed under the MIT License.  
See [LICENSE.md](LICENSE.md) for details.

---

## GitHub Pages Survival Logbook

*Why does deploying a static site sometimes feel like fighting a hydra? Here’s what we learned the hard way.*

### Real-World Troubleshooting – What Actually Happens

1. **404 Limbo**  
   - You deploy, the workflow is green, `gh-pages` branch is present, but…  
     [https://cyberman.github.io/SQLiteStudio-Survival-Guide/](https://cyberman.github.io/SQLiteStudio-Survival-Guide/)  
     is a 404. No error, no warning, just silence.

2. **No “Published” Status on Pages**  
   - In the new GitHub UI, the classic “Your site is published at…” banner often **does not appear** until you’ve had a successful first deploy.

3. **Missing `index.html`?**  
   - If your documentation lacks a `docs/index.md` (or `index.md` at the root), MkDocs will NOT generate an `index.html` – so Pages serves a 404 even though everything else is there.

4. **Permission and Visibility Pitfalls**  
   - Check that your repository is **public** (Pages for private repos requires a paid plan).
   - Under `Settings → Actions → General`, make sure “Workflow permissions” is set to “Read and write”.

5. **The Legendary “Branch Switch” Trick**  
   - Sometimes, the only way to force GitHub Pages to recognize your repo is to switch the Pages source from “GitHub Actions” to a classic branch (`gh-pages`), save, wait, then switch back.  
   - This will almost always force the backend to publish your site (eventually showing the “Published” banner).

6. **Be Patient**  
   - Even after a successful build and the right settings, GitHub Pages can take several minutes to update globally.  
   - Don’t panic—reload, breathe, and wait.

### The Moral

- *If you hit a wall, document it!*  
- You are not alone.  
- Sometimes the real “Survival Guide” is the troubleshooting journey itself.

---

> *“Tested in the wild. Proven by pain. The Survival Guide documents both the tools and the traps.”*
