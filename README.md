## 📊 Introduction

💼 This project provides a data-driven analysis of the remote Data Analyst job market, leveraging a dataset of over 700,000 job postings.

🎯 The objective is to extract actionable insights into skill demand and compensation trends to inform career development strategies.

📈 Through structured SQL queries that address key questions



🔍 SQL queries? Check them out here: [project.sql](https://github.com/VincentNwosu/Remote-data-analyst-jobs-2023-analysis/tree/main/project.sql)
## 💡 Background
The goal of this project is to help aspiring Data Analysts understand what skills to learn and what to expect for remote roles in terms of pay and company demand.
## 📁 Data Source

The dataset for this project is sourced from **Luke Barousse's SQL for Data Analytics Course**.

It contains 700,000+ real-world Data Analyst, Data Scientist, and Data Engineer job postings from 2023.

🔗 **Course & Dataset Link:** https://www.lukebarousse.com/sql
🔗 **GitHub Project Reference:** https://github.com/lukebarousse

Data was loaded into PostgreSQL and queried using SQL in VS Code.


## 🛠️ Tools Used

For this project, I utilized the following tools:

- 🐘 **PostgreSQL** - Database management system for storing and querying the dataset
- 💻 **Visual Studio Code (VS Code)** - Primary code editor for writing SQL queries
- 🐙 **Git & GitHub** - Version control and project portfolio hosting
- 📊 **SQL** - Main language for data analysis and extraction

# 🔍 Analysis Overview

### 1️⃣ Top Skills for Data Analysts
Identifies the most in-demand skills for Data Analyst roles.

### 2️⃣ 💰 Salary by Experience (Remote)
Compares average remote salaries across experience levels: Lead, Senior, Mid-Level, and Junior.

### 3️⃣ 🏠 Remote vs Onsite Salary
Analyzes salary differences between remote and onsite Data Analyst positions.

### 4️⃣ 🏢 Top Paying Companies (Remote)
Highlights companies offering the highest salaries for remote Data Analyst roles.

### 5️⃣ 🎯 Optimal Skills
Explores skills that are both high-demand and high-paying

# Findings and insight



### 1️⃣ Top Skills for Data Analysts
**Finding:** SQL is the most in-demand skill by far, followed by Excel, Python, Tableau, and Power BI.
**Insight:** 💡 Aspiring Data Analysts should prioritize SQL and Excel first, then add Python and a visualization tool like Tableau or Power BI.
 



![alt text](<skills_job_count_barchart - Copy.png>)

**Figure 1: Top Skills for a Data Analyst**

This chart shows the top 10 most in-demand skills for Data Analysts overall.

*Chart generated with ChatGPT.*






### 2️⃣ 💰 Salary by Experience (Remote)
#### 💰 Average Remote Salary by Experience Level

| Experience Level | Avg Salary | Jobs | 
| :--- | ---: | :--- |
| Lead / Principal | $113,152 | 20 |
| Senior | $100,479 | 11 |
| Mid-Level / General | $95,099 | 552 |
| Junior / Entry | $65,619 | 21 |

**Finding:** Salary increases 72% from Junior ($65,619) to Lead ($113,152). Mid-Level has the most remote opportunities (552 jobs).

### 3️⃣ 🏠 Remote vs Onsite Salary
**Finding:** Remote Data Analyst roles pay slightly higher on average than onsite roles, with more consistent salaries.
**Insight:** 🌍 Remote work does NOT mean lower pay. Companies are willing to pay premium for remote talent, making remote a great career strategy.


| work_type | avg_salary | job_count |
| :--- | :---: | :---: |
| Onsite | 93765 | 4859 |
| Remote | 94770 | 604 |

 Remote jobs pay slightly higher ($94,770) than Onsite ($93,765) but Onsite has 8x more openings (4,859 vs 604).

### 4️⃣ 🏢 Top Paying Companies (Remote)
**Finding:** Big Tech and Finance companies like Meta, Google, AT&T, and large consulting firms offer the highest remote salaries for Data Analysts.
**Insight:** 🎯 Targeting large tech companies and enterprise companies increases chances of high-paying remote roles.

### 5️⃣ 🎯 Optimal Skills (High Demand + High Pay)
**Finding:** Skills like Snowflake, Azure, AWS, and advanced Python pay the most, while SQL, Excel, and Tableau are most in-demand. The sweet spot is SQL + Python + Cloud.
**Insight:** 🚀 To be both employable AND highly paid, combine foundational skills (SQL, Excel) with high-value skills (Python, Snowflake, Azure/AWS).


# 📚 What I Learnt

1.  **SQL Joins & Aggregation:** Used `JOIN` between job_postings and skills tables + `GROUP BY`, `COUNT()`, `AVG()` to analyze job postings.
2.  **Skill Analysis:** Found that `SQL` is the #1 most demanded skill for remote Data Analysts from `1_top_skill_remote.sql`
3.  **Salary Analysis:** Compared Onsite vs Remote and Experience Levels to see how pay changes.
4.  **Business Insight:** Learned to combine Demand (job count) and Salary to find Optimal Skills  not just the most common skill.
5.  **Visualization & GitHub:** Created chart in chatgpt and added it to `/assets` folder for the README.

# Conclusion


If you're trying to break into remote Data Analyst roles, here's what 5,463 jobs taught me.

SQL is still the foundation. It's the most in-demand skill, so it's non-negotiable.

The remote market favors Mid-Level talent — 552 roles at $95,099, compared to just 21 Junior roles at $65,619. That's a clear signal to upskill quickly, because Lead roles jump to $113,152.

Remote also pays slightly more than Onsite ($94,770 vs $93,765), which makes the remote path even more attractive.

Company choice makes a big difference. Robert Half ($122,167) and Motion Recruitment ($107,813) are paying well above the remote average.

For skills, Python is the smartest investment — 236 jobs at $101,397 gives you both demand and good pay. To push into the $110k+ range, adding Go ($115,320) and Snowflake ($112,948) will set you apart.

My takeaway: Build a strong base in SQL and Python to land a Mid-Level remote role, then layer on high-value tools like Snowflake and target top-paying employers to grow past $110k.




