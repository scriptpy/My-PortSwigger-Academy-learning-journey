#!/bin/bash

# Simple publishing script for PortSwigger Academy lab writeups
# Usage: ./publish.sh "Lab Name" "lab-slug"

LAB_NAME="$1"
LAB_SLUG="$2"
DATE=$(date +%Y-%m-%d)

# Generate permalink from date and slug
YEAR=$(date +%Y)
MONTH=$(date +%m)
DAY=$(date +%d)
PERMALINK="/$YEAR/$MONTH/$DAY/$LAB_SLUG.html"

if [ -z "$LAB_NAME" ] || [ -z "$LAB_SLUG" ]; then
    echo "Usage: ./publish.sh \"Lab Name\" \"lab-slug\""
    echo "Example: ./publish.sh \"SQL injection vulnerability in WHERE clause\" \"sql-injection-where-clause\""
    exit 1
fi

# Create post file
POST_FILE="_posts/${DATE}-${LAB_SLUG}.md"

if [ ! -f "$POST_FILE" ]; then
    echo "Creating new post: $POST_FILE"
    cat > "$POST_FILE" << EOF
---
layout: post
title: "$LAB_NAME"
date: $DATE
categories: [labs]
permalink: $PERMALINK
---

# $LAB_NAME

**Topic:** [Add topic]  
**Difficulty:** [Easy/Medium/Hard]  
**Time Taken:** [X minutes]  
**Date Completed:** $DATE

## What I Did
[Brief 2-3 sentence summary of the approach]

## Screenshots
![Step 1]({{ site.baseurl }}/screenshots/${LAB_SLUG}-step1.png)
![Step 2]({{ site.baseurl }}/screenshots/${LAB_SLUG}-step2.png)

## What Worked
- [Bullet point]
- [Bullet point]

## What Didn't Work
- [Bullet point]

## Key Takeaway
[One sentence about what you learned]

## Solution
[Optional: Brief explanation if you want to share]

---
**Lab Link:** [PortSwigger Academy URL]

---

## Disclaimer

**AI Assistance:** This writeup was created with the assistance of an AI coding assistant (Cursor AI/Auto). The AI helped with structuring, formatting, and documentation, but all lab solutions, screenshots, and learning insights are my own work based on completing the PortSwigger Academy lab.

**License:** This content is licensed under the GNU General Public License v3.0 (GPL-3.0). See the [LICENSE](LICENSE) file in this repository for full details.
EOF
    echo "Post created! Edit $POST_FILE to fill in the details."
else
    echo "Post already exists: $POST_FILE"
fi

# Instructions
echo ""
echo "Next steps:"
echo "1. Edit $POST_FILE and fill in the details"
echo "2. Add screenshots to screenshots/ directory (name them: ${LAB_SLUG}-step1.png, etc.)"
echo "3. Commit and push to GitHub:"
echo "   git add $POST_FILE screenshots/"
echo "   git commit -m \"Add lab: $LAB_NAME\""
echo "   git push"

