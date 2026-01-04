---
layout: home
title: PortSwigger Academy Learning Journey
---

# Welcome to My Cybersecurity Learning Journey

I'm documenting my progress through [PortSwigger Web Security Academy](https://portswigger.net/web-security) labs as I learn web application security.

## About This Project

This is my public learning journal where I:
- Document each lab I complete
- Share what I learned
- Track my progress
- Learn in public

**Current Level:** Beginner (2/10)  
**Total Labs Completed:** 1

## Recent Labs

{% for post in site.posts limit:5 %}
- [{{ post.title }}]({{ post.url }}) - {{ post.date | date: "%B %d, %Y" }}
{% endfor %}

[View All Labs →]({{ site.baseurl }}/progress.html)

## Progress Tracking

- [View My Roadmap]({{ site.baseurl }}/roadmap.html)
- [Track My Progress]({{ site.baseurl }}/progress.html)

---

## License & AI Assistance

**License:** This project and all content is licensed under the [GNU General Public License v3.0 (GPL-3.0)]({{ site.baseurl }}/LICENSE).

**AI Assistance:** All lab writeups are created with the assistance of an AI coding assistant (Cursor AI/Auto). The AI helps with structuring, formatting, and documentation, but all lab solutions, screenshots, and learning insights are based on my own work completing the PortSwigger Academy labs. Each post includes a disclaimer stating this explicitly.

---

*Last updated: {{ site.time | date: "%B %d, %Y" }}*

