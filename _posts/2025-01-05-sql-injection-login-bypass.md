---
layout: post
title: "SQL injection vulnerability allowing login bypass"
date: 2025-01-05
categories: [labs]
---

# SQL injection vulnerability allowing login bypass

**Topic:** SQL Injection  
**Difficulty:** Easy  
**Time Taken:** [20 min]  
**Date Completed:** 2025-01-05

## What I Did
I used SQL injection in the login form to bypass authentication. I entered `administrator'--` in the username field, which closed the SQL string and commented out the password check, allowing me to log in as administrator without knowing the password.

## Screenshots
![Step 1]({{ site.baseurl }}/screenshots/sql-injection-login-bypass-step1.png)
![Step 2]({{ site.baseurl }}/screenshots/sql-injection-login-bypass-step2.png)
![Step 3]({{ site.baseurl }}/screenshots/sql-injection-login-bypass-step3.png)

## What Worked
- Using `administrator'--` in the username field
- SQL comment syntax (`--`) to bypass password check
- Entering the payload directly in the website login form

## What Didn't Work
- Trying the payload in Burp Suite Repeater initially didn't work
- Various payload variations with spaces and encoding

## Key Takeaway
SQL injection in login forms can bypass authentication by closing the SQL string with a single quote and using comment syntax to ignore the password check, allowing login as any user without knowing their password.

## Solution
The vulnerable SQL query was likely: `SELECT * FROM users WHERE username = 'administrator' AND password = 'password'`

By entering `administrator'--` in the username field, the query became:
`SELECT * FROM users WHERE username = 'administrator'--' AND password = 'password'`

The `--` comments out everything after it, effectively removing the password check, so the query only checks if the username exists and returns the administrator user.

---
**Lab Link:** https://portswigger.net/web-security/sql-injection/lab-login-bypass

---

## Disclaimer

**AI Assistance:** This writeup was created with the assistance of an AI coding assistant (Cursor AI/Auto). The AI helped with structuring, formatting, and documentation, but all lab solutions, screenshots, and learning insights are my own work based on completing the PortSwigger Academy lab.

**License:** This content is licensed under the GNU General Public License v3.0 (GPL-3.0). See the [LICENSE]({{ site.baseurl }}/LICENSE) file in this repository for full details.
