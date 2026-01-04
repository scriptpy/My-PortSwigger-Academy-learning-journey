# PortSwigger Academy Learning Journey

This repository documents my progress through [PortSwigger Web Security Academy](https://portswigger.net/web-security) labs.

## 🚀 Quick Start

### 1. After Completing a Lab

1. **Take screenshots** while solving the lab
2. **Save screenshots** to `screenshots/` folder:
   - Name them: `lab-slug-step1.png`, `lab-slug-step2.png`, etc.
   - Example: `sql-injection-where-step1.png`

3. **Create a new post**:
   ```bash
   ./publish.sh "Lab Name" "lab-slug"
   ```
   
   Example:
   ```bash
   ./publish.sh "SQL injection vulnerability in WHERE clause" "sql-injection-where"
   ```

4. **Fill in the template** - Open the created file in `_posts/` and fill in:
   - Topic
   - Difficulty
   - Time taken
   - What you did (2-3 sentences)
   - What worked (bullet points)
   - What didn't work (bullet points)
   - Key takeaway (1 sentence)

5. **Publish**:
   ```bash
   git add _posts/ screenshots/
   git commit -m "Add lab: [Lab Name]"
   git push
   ```

### 2. GitHub Pages Setup

1. Go to your repository settings on GitHub
2. Navigate to "Pages" section
3. Select source: "Deploy from a branch"
4. Choose branch: `main` (or `master`)
5. Select folder: `/ (root)`
6. Your site will be live at: `https://yourusername.github.io/portswigger/`

### 3. Publishing to Medium & LinkedIn

**Medium:**
- Copy your post content from `_posts/`
- Paste into Medium editor
- Add a brief intro about your learning journey
- Publish

**LinkedIn:**
- Write a brief post (2-3 paragraphs) about:
  - What lab you completed
  - Key takeaway
  - Link to your GitHub Pages post
- Share weekly/monthly summaries for better engagement

## 📁 Project Structure

```
.
├── _posts/              # Your lab writeups (Jekyll posts)
├── screenshots/         # Screenshots for labs
├── lab-template.md      # Template for new labs
├── roadmap.md           # Learning roadmap
├── progress.md          # Progress tracker
├── publish.sh           # Script to create new posts
├── _config.yml          # Jekyll configuration
└── README.md           # This file
```

## 📝 Writing Tips (Minimal Effort)

- **Don't overthink it** - Just fill in the blanks
- **Screenshots tell the story** - Let visuals do the work
- **Bullet points are fine** - No need for long paragraphs
- **One sentence takeaways** - Keep it simple
- **Batch publish** - Write a few, publish once a week

## 🎯 Workflow

1. **During lab:** Take screenshots, jot quick notes
2. **After lab:** Run `publish.sh`, fill template (2-3 min)
3. **Weekly:** Commit and push to GitHub
4. **Monthly:** Share summary on LinkedIn

## 🔧 Customization

Edit `_config.yml` to customize:
- Site title
- Author name
- Email
- Navigation

## 📚 Resources

- [PortSwigger Academy](https://portswigger.net/web-security)
- [Jekyll Documentation](https://jekyllrb.com/docs/)
- [GitHub Pages Guide](https://docs.github.com/en/pages)

## 📄 License & AI Assistance

**License:** This project and all content is licensed under the [GNU General Public License v3.0 (GPL-3.0)](LICENSE).

**AI Assistance:** All lab writeups in this repository are created with the assistance of an AI coding assistant (Cursor AI/Auto). The AI helps with structuring, formatting, and documentation, but all lab solutions, screenshots, and learning insights are based on my own work completing the PortSwigger Academy labs. Each post includes a disclaimer stating this explicitly.

---

**Remember:** This is your learning journey. Don't stress about perfect writing - just document what you learned!

