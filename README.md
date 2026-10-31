# Data Analyst Job Market Analysis (Remote Focus) - SQL Project

## 📌 Overview
This project analyzes Data Analyst job postings to identify top-paying skills, locations, and trends, with a focus on **REMOTE** roles. Built using PostgreSQL.

## 📊 Dataset
Source: `lukebarousse/data analyst job postings` (2023)
- `job_postings_fact` - job details, salary, location, remote flag
- `skills_job_dim` - job_id to skill_id mapping
- `skills_dim` - skill names

## ❓ Business Questions Answered
1.  What is the pay gap between Remote vs On-site Data Analyst roles?
2.  Which cities have the most Data Analyst jobs?
3.  What are the top skills for Entry-Level Data Analysts?
4.  What is the monthly hiring trend for Data Analysts?
5.  What are the most optimal (high-pay + high-demand) skills for REMOTE Data Analysts?

## 🔍 Findings

### 1. Remote vs On-site Pay Gap
- Remote roles pay competitively vs on-site. Query compares AVG(salary_year_avg) grouped by `job_work_from_home`.

### 2. Top Cities for Data Analyst Jobs
- Top hubs remain high-competition cities, but remote opens access from anywhere.

### 3. Entry-Level Skills
- Core entry skills: SQL, Excel, Python, Tableau, Power BI.

### 4. Monthly Hiring Trend (2023)
- **January is peak hiring: 23,697 jobs** posted. Hiring drops mid-year and rises again in Q4.

### 5. Most Optimal Skills FOR REMOTE (Final Query)
**File:** `5_optimal_skills_for_remote.sql`
`WHERE job_work_from_home = TRUE`

| Skill | Demand (Remote Jobs) | Avg Salary (Remote) |
| :--- | :--- | :--- |
| sql | 398 | $97,237 |
| excel | 256 | $87,288 |
| python | 236 | $101,397 |
| tableau | 230 | $99,288 |
| power bi | 110 | $97,431 |

**Key Insight:**
- **SQL is #1 for demand** (398 remote jobs) - must-have.
- **Python is #1 for salary** ($101,397) with high demand - most optimal skill.
- **Excel pays the lowest** ($87k) among top remote skills.
![Remote Salary Chart](remote_salary.png)
*Insight: Python offers highest average salary for remote Data Analyst roles.*

## 🛠️ Tools Used
- PostgreSQL
- VS Code + SQLTools
- Git & GitHub

## ▶️ How to Run
```sql
-- Example: 5_optimal_skills_for_remote.sql
SELECT 
    s.skills,
    COUNT(sj.job_id) AS demand_count,
    ROUND(AVG(j.salary_year_avg), 0) AS avg_salary
FROM job_postings_fact j
INNER JOIN skills_job_dim sj ON j.job_id = sj.job_id
INNER JOIN skills_dim s ON sj.skill_id = s.skill_id
WHERE 
    j.job_title_short = 'Data Analyst'
    AND j.salary_year_avg IS NOT NULL
    AND j.job_work_from_home = TRUE
GROUP BY s.skills
HAVING COUNT(sj.job_id) > 100
ORDER BY demand_count DESC
LIMIT 25;