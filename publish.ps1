# PowerShell script for creating new lab posts
# Usage: .\publish.ps1 "Lab Name" "lab-slug"

param(
    [Parameter(Mandatory=$true)]
    [string]$LabName,
    
    [Parameter(Mandatory=$true)]
    [string]$LabSlug
)

$Date = Get-Date -Format "yyyy-MM-dd"
$PostFile = "_posts\$Date-$LabSlug.md"

if (Test-Path $PostFile) {
    Write-Host "Post already exists: $PostFile" -ForegroundColor Yellow
    exit
}

Write-Host "Creating new post: $PostFile" -ForegroundColor Green

$Content = @"
---
layout: post
title: "$LabName"
date: $Date
categories: [labs]
---

# $LabName

**Topic:** [Add topic]  
**Difficulty:** [Easy/Medium/Hard]  
**Time Taken:** [X minutes]  
**Date Completed:** $Date

## What I Did
[Brief 2-3 sentence summary of the approach]

## Screenshots
![Step 1]({{ site.baseurl }}/screenshots/${LabSlug}-step1.png)
![Step 2]({{ site.baseurl }}/screenshots/${LabSlug}-step2.png)

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
"@

$Content | Out-File -FilePath $PostFile -Encoding UTF8

Write-Host ""
Write-Host "Post created! Next steps:" -ForegroundColor Cyan
Write-Host "1. Edit $PostFile and fill in the details"
Write-Host "2. Add screenshots to screenshots/ directory (name them: ${LabSlug}-step1.png, etc.)"
Write-Host "3. Commit and push to GitHub:"
Write-Host "   git add $PostFile screenshots/"
Write-Host "   git commit -m `"Add lab: $LabName`""
Write-Host "   git push"

