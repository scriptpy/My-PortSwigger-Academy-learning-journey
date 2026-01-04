# Getting Started with PortSwigger Academy

## Step 1: Create Your Account
1. Go to https://portswigger.net/web-security
2. Click "Sign up" (top right)
3. Create a free account
4. Verify your email

## Step 2: Install Burp Suite Community Edition
1. Download from: https://portswigger.net/burp/communitydownload
2. Install the application
3. Launch Burp Suite
4. Click "Next" through the setup wizard
5. Choose "Temporary project" for now
6. Click "Start Burp"

## Step 3: Configure Your Browser
### For Chrome/Edge:
1. Install "FoxyProxy Standard" extension
2. Configure proxy: 127.0.0.1:8080
3. Or use Burp's built-in browser (recommended)

### For Firefox:
1. Go to Settings > Network Settings
2. Manual proxy configuration
3. HTTP Proxy: 127.0.0.1, Port: 8080
4. Check "Also use this proxy for HTTPS"
5. Add exception: 127.0.0.1

## Step 4: Install Burp Certificate (for HTTPS)
1. In Burp, go to Proxy > Options
2. Click "Import / export CA certificate"
3. Export certificate in DER format
4. Install in your browser:
   - Chrome: Settings > Privacy > Security > Manage certificates > Import
   - Firefox: Settings > Privacy & Security > Certificates > View Certificates > Import

## Step 5: Your First Lab
1. Go to https://portswigger.net/web-security
2. Start with: "SQL injection vulnerability in WHERE clause allowing retrieval of hidden data"
3. Click "Access the lab"
4. Use Burp Suite to intercept and modify requests
5. Try to solve it yourself for 15-20 minutes
6. If stuck, use the "View solution" button

## Step 6: Document Your First Lab

After completing your first lab:

1. **Take screenshots** of key steps
2. **Save them** to `screenshots/` folder
3. **Create post**:
   ```bash
   ./publish.sh "SQL injection vulnerability in WHERE clause" "sql-injection-where"
   ```
4. **Fill in the template** in `_posts/YYYY-MM-DD-sql-injection-where.md`
5. **Commit and push**:
   ```bash
   git add _posts/ screenshots/
   git commit -m "Add first lab: SQL injection WHERE clause"
   git push
   ```

## Tips for Success
- **Read the topic material** before attempting labs
- **Use Burp Suite** - it's essential for most labs
- **Take notes** - document what works and what doesn't
- **Don't give up** - some labs take time to understand
- **Review solutions** - even if you solve it, check the official solution

## Recommended Learning Order
1. SQL Injection (start here - foundational)
2. Authentication (common in real-world)
3. XSS (very common vulnerability)
4. Path Traversal (simple concept)
5. CSRF (important for understanding web security)

## Time Commitment
- **Beginner:** 1-2 hours per day
- **Goal:** Complete 2-3 labs per day
- **Weekly goal:** 10-15 labs completed

## Need Help?
- Check the topic material on PortSwigger
- Use the "View solution" feature (but try first!)
- Review community writeups on GitHub
- Ask questions in cybersecurity communities

