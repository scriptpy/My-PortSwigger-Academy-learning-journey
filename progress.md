---
layout: page
title: Progress Tracker
---

# Progress Tracker

## Overall Progress: 3/200+ labs

### SQL Injection (3/18)
- [x] SQL injection vulnerability in WHERE clause allowing retrieval of hidden data ✅ [View Post]({{ site.baseurl }}/2025/01/04/sql-injection-where.html)
- [x] SQL injection vulnerability allowing login bypass ✅ [View Post]({{ site.baseurl }}/2025/01/05/sql-injection-login-bypass.html)
- [x] SQL injection UNION attack, determining the number of columns returned by the query ✅ [View Post]({{ site.baseurl }}/2025/01/05/sql-injection-union-columns.html)
- [ ] SQL injection UNION attack, finding a column containing text
- [ ] SQL injection UNION attack, retrieving data from other tables
- [ ] SQL injection UNION attack, retrieving multiple values in a single column
- [ ] SQL injection attack, querying the database type and version on Oracle
- [ ] SQL injection attack, querying the database type and version on MySQL and Microsoft
- [ ] SQL injection attack, listing the database contents on non-Oracle databases
- [ ] SQL injection attack, listing the database contents on Oracle
- [ ] Blind SQL injection with conditional responses
- [ ] Blind SQL injection with conditional errors
- [ ] Blind SQL injection with time delays
- [ ] Blind SQL injection with time delays and information retrieval
- [ ] Blind SQL injection with out-of-band interaction
- [ ] Blind SQL injection with out-of-band data exfiltration
- [ ] SQL injection with filter bypass via XML encoding
- [ ] SQL injection in different parts of the query

### Authentication (0/14)
- [ ] Username enumeration via different responses
- [ ] Username enumeration via subtly different responses
- [ ] Username enumeration via response timing
- [ ] Broken brute-force protection, IP block
- [ ] Username enumeration via account lock
- [ ] Broken brute-force protection, multiple credentials per request
- [ ] 2FA simple bypass
- [ ] Password reset broken logic
- [ ] Password reset poisoning via middleware
- [ ] Password brute-force via password change
- [ ] Broken password change
- [ ] 2FA bypass using a brute-force attack
- [ ] 2FA bypass using a brute-force attack
- [ ] Brute-forcing a stay-logged-in cookie

### Cross-Site Scripting (XSS) (0/30)
- [ ] Reflected XSS into HTML context with nothing encoded
- [ ] Stored XSS into HTML context with nothing encoded
- [ ] DOM XSS in document.write sink using source location.search
- [ ] DOM XSS in innerHTML sink using source location.search
- [ ] DOM XSS in jQuery anchor href attribute sink using location.search source
- [ ] DOM XSS in jQuery selector sink using a hashchange event
- [ ] Reflected XSS into attribute with angle brackets HTML-encoded
- [ ] Stored XSS into anchor href attribute with double quotes HTML-encoded
- [ ] Reflected XSS into a JavaScript string with angle brackets HTML encoded
- [ ] DOM XSS in document.write sink using source location.search inside a select element
- [ ] DOM XSS in AngularJS expression with angle brackets and double quotes HTML-encoded
- [ ] Reflected DOM XSS
- [ ] Stored DOM XSS
- [ ] Exploiting cross-site scripting to steal cookies
- [ ] Exploiting cross-site scripting to capture passwords
- [ ] Exploiting XSS to perform CSRF
- [ ] Reflected XSS into HTML context with most tags and attributes blocked
- [ ] Reflected XSS into HTML context with all tags blocked except custom ones
- [ ] Reflected XSS with event handlers and href attributes blocked
- [ ] Reflected XSS in a JavaScript URL with some characters blocked
- [ ] Reflected XSS with AngularJS sandbox escape without strings
- [ ] Reflected XSS with AngularJS sandbox escape and CSP bypass
- [ ] Reflected XSS protected by very strict CSP, with dangling markup attack
- [ ] Reflected XSS protected by CSP, with CSP bypass
- [ ] Stored XSS into onclick event with angle brackets and double quotes HTML-encoded and single quotes and backslash escaped
- [ ] Reflected XSS into HTML context with all tags blocked except custom ones
- [ ] Reflected XSS with all HTML tags blocked except custom ones
- [ ] Reflected XSS with AngularJS sandbox escape without strings
- [ ] Reflected XSS with AngularJS sandbox escape and CSP bypass
- [ ] Reflected XSS protected by CSP, with CSP bypass

### Path Traversal (0/6)
- [ ] File path traversal, simple case
- [ ] File path traversal, traversal sequences blocked with absolute path bypass
- [ ] File path traversal, traversal sequences stripped non-recursively
- [ ] File path traversal, traversal sequences stripped with superfluous URL-decode
- [ ] File path traversal, validation of start of path
- [ ] File path traversal, validation of file extension with null byte bypass

### Cross-Site Request Forgery (CSRF) (0/12)
- [ ] CSRF vulnerability with no defenses
- [ ] CSRF where token validation depends on request method
- [ ] CSRF where token validation depends on token being present
- [ ] CSRF where Referer validation depends on header being present
- [ ] CSRF with broken Referer validation
- [ ] CSRF where token is not tied to user session
- [ ] CSRF token is not validated
- [ ] CSRF token validation does not check if token belongs to user session
- [ ] CSRF protection bypass given Referer header that matches the origin
- [ ] CSRF protection bypass given Referer header that matches the origin
- [ ] CSRF where Referer validation depends on header being present
- [ ] CSRF with broken Referer validation

### Other Topics
- [ ] Insecure Deserialization (0/10)
- [ ] Server-Side Request Forgery (SSRF) (0/7)
- [ ] Access Control (0/11)
- [ ] Business Logic Vulnerabilities (0/12)
- [ ] OAuth Authentication (0/4)
- [ ] File Upload Vulnerabilities (0/6)
- [ ] Server-Side Template Injection (0/6)
- [ ] Web Cache Poisoning (0/7)
- [ ] HTTP Host Header Attacks (0/5)
- [ ] HTTP Request Smuggling (0/12)
- [ ] Information Disclosure (0/7)
- [ ] Race Conditions (0/3)
- [ ] DOM-Based Vulnerabilities (0/11)
- [ ] WebSockets (0/6)
- [ ] GraphQL API (0/4)
- [ ] JWT (0/6)
- [ ] API Testing (0/4)
- [ ] XML External Entity (XXE) Injection (0/6)
- [ ] NoSQL Injection (0/2)
- [ ] Command Injection (0/4)
- [ ] Server-Side Includes (SSI) Injection (0/2)
- [ ] LDAP Injection (0/2)
- [ ] Clickjacking (0/2)
- [ ] CORS (0/4)

---

**Last Updated:** January 5, 2025

