# Quick Start Guide

## After Completing a Lab (2-Minute Process)

### Step 1: Take Screenshots
While solving the lab, take 2-3 screenshots of key steps.

### Step 2: Save Screenshots
Save them to `screenshots/` folder with names like:
- `lab-slug-step1.png`
- `lab-slug-step2.png`

Example: `sql-injection-where-step1.png`

### Step 3: Create Post (Windows)
```powershell
.\publish.ps1 "Lab Name Here" "lab-slug"
```

Example:
```powershell
.\publish.ps1 "SQL injection vulnerability in WHERE clause" "sql-injection-where"
```

### Step 4: Fill Template (2 minutes)
Open the created file in `_posts/` and fill in:
- ✅ Topic (e.g., "SQL Injection")
- ✅ Difficulty (Easy/Medium/Hard)
- ✅ Time taken (e.g., "15 minutes")
- ✅ What I did (2-3 sentences)
- ✅ What worked (2 bullet points)
- ✅ What didn't work (1 bullet point)
- ✅ Key takeaway (1 sentence)

### Step 5: Publish
```powershell
git add _posts/ screenshots/
git commit -m "Add lab: [Lab Name]"
git push
```

Done! Your lab is now live on GitHub Pages.

---

## GitHub Pages Setup (One-Time)

1. Push this repo to GitHub
2. Go to repository Settings → Pages
3. Source: "Deploy from a branch"
4. Branch: `main`, folder: `/ (root)`
5. Your site: `https://yourusername.github.io/portswigger/`

---

## Publishing to Medium & LinkedIn

### Medium (Weekly)
- Copy post content from `_posts/`
- Add brief intro: "I'm learning cybersecurity through PortSwigger Academy..."
- Publish

### LinkedIn (Weekly/Monthly)
- Write 2-3 paragraphs:
  - What you learned this week
  - Key insight
  - Link to your GitHub Pages
- Share as a post

---

**That's it!** Minimal writing, maximum learning. 🚀

