---
layout: post
title: "SQL injection UNION attack, determining the number of columns returned by the query"
date: 2026-01-05
categories: [labs]
---

# SQL injection UNION attack, determining the number of columns returned by the query

**Topic:** SQL Injection  
**Difficulty:** Practitioner  
**Time Taken:** [ 15 minutes]  
**Date Completed:** 2026-01-05

## What I Did
I used the ORDER BY technique to determine the number of columns returned by the SQL query. I tried `ORDER BY 1--`, `ORDER BY 2--`, `ORDER BY 3--` until I found that 3 columns were returned. Then I used `UNION SELECT NULL,NULL,NULL--` to confirm and return an additional row with NULL values.

## Screenshots
![Step 1]({{ site.baseurl }}/screenshots/sql-injection-union-columns-step1.png)
![Step 2]({{ site.baseurl }}/screenshots/sql-injection-union-columns-step2.png)
![Step 3]({{ site.baseurl }}/screenshots/sql-injection-union-columns-step3.png)

## What Worked
- Using ORDER BY to systematically find the number of columns
- UNION SELECT with NULL values to confirm column count
- Modifying the category parameter in Burp Suite Repeater

## What Didn't Work
- Initially tried different approaches, but ORDER BY method worked best

## Key Takeaway
UNION attacks require knowing the exact number of columns in the original query. The ORDER BY technique (ORDER BY 1, ORDER BY 2, etc.) is the standard method to determine this, and once you know the column count, you can use UNION SELECT with NULL values to confirm and retrieve data from other tables.

## Solution
The vulnerable query was: `SELECT * FROM products WHERE category = 'Gifts'`

To determine the number of columns, I used:
- `' ORDER BY 1--` (worked)
- `' ORDER BY 2--` (worked)
- `' ORDER BY 3--` (worked)
- `' ORDER BY 4--` (error - so there are 3 columns)

Then I confirmed with:
- `' UNION SELECT NULL,NULL,NULL--`

This returned an additional row with three NULL values, confirming the query returns 3 columns and the UNION attack is working. This technique is the foundation for retrieving data from other tables in subsequent labs.

---
**Lab Link:** https://portswigger.net/web-security/sql-injection/union-attacks/lab-determine-number-of-columns

---

## Disclaimer

**AI Assistance:** This writeup was created with the assistance of an AI coding assistant (Cursor AI/Auto). The AI helped with structuring, formatting, and documentation, but all lab solutions, screenshots, and learning insights are my own work based on completing the PortSwigger Academy lab.

**License:** This content is licensed under the GNU General Public License v3.0 (GPL-3.0). See the [LICENSE]({{ site.baseurl }}/LICENSE) file in this repository for full details.
