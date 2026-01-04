---
layout: post
title: "SQL injection vulnerability in WHERE clause allowing retrieval of hidden data"
date: 2025-01-04
categories: [labs]
---

# SQL injection vulnerability in WHERE clause allowing retrieval of hidden data

**Topic:** SQL Injection  
**Difficulty:** Easy  
**Time Taken:** 20 minutes  
**Date Completed:** 2025-01-04

## What I Did
I used Burp Suite's Repeater to modify the category parameter in the GET request. I changed the category from "Gifts" to "Gifts' OR 1=1--" which caused the SQL query to return all products, including unreleased ones.

## Screenshots
![Step 1]({{ site.baseurl }}/screenshots/sql-injection-where-step1.png)
![Step 2]({{ site.baseurl }}/screenshots/sql-injection-where-step2.png)
![Step 3]({{ site.baseurl }}/screenshots/sql-injection-where-step3.png)

## What Worked
- Using Burp Suite's built-in browser
- Sending the request to Repeater to modify it
- The payload `' OR 1=1--` successfully bypassed the filter

## What Didn't Work
- Nothing - the payload worked on the first try!

## Key Takeaway
SQL injection in WHERE clauses can be exploited by breaking out of the query with a single quote and using OR 1=1 to make the condition always true, then commenting out the rest with --.

## Solution
The vulnerable query was: `SELECT * FROM products WHERE category = 'Gifts' AND released = 1`

By changing the category parameter to `Gifts' OR 1=1--`, the query became:
`SELECT * FROM products WHERE category = 'Gifts' OR 1=1--' AND released = 1`

This returns all products because `1=1` is always true, and `--` comments out the rest.

---
**Lab Link:** https://portswigger.net/web-security/sql-injection/lab-retrieve-hidden-data

---

## Disclaimer

**AI Assistance:** This writeup was created with the assistance of an AI coding assistant (Cursor AI/Auto). The AI helped with structuring, formatting, and documentation, but all lab solutions, screenshots, and learning insights are my own work based on completing the PortSwigger Academy lab.

**License:** This content is licensed under the GNU General Public License v3.0 (GPL-3.0). See the [LICENSE](LICENSE) file in this repository for full details.