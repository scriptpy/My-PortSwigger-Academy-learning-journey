---
layout: post
title: "Example Lab - SQL injection vulnerability in WHERE clause"
date: 2024-01-01
categories: [labs]
---

# Example Lab - SQL injection vulnerability in WHERE clause

**Topic:** SQL Injection  
**Difficulty:** Easy  
**Time Taken:** 15 minutes  
**Date Completed:** 2024-01-01

## What I Did
I intercepted the request in Burp Suite and modified the category parameter to include a SQL injection payload. By adding `' OR 1=1--` to the query, I was able to retrieve all products from the database instead of just the filtered category.

## Screenshots
![Step 1]({{ site.baseurl }}/screenshots/example-lab-step1.png)
![Step 2]({{ site.baseurl }}/screenshots/example-lab-step2.png)

## What Worked
- Using Burp Suite to intercept and modify requests
- Adding `' OR 1=1--` to bypass the WHERE clause filter
- Understanding how SQL injection works in basic scenarios

## What Didn't Work
- Initially tried `' OR '1'='1` but the comment syntax `--` was cleaner

## Key Takeaway
SQL injection in WHERE clauses can be exploited by breaking out of the query with `'` and using `OR 1=1` to make the condition always true, then commenting out the rest with `--`.

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

