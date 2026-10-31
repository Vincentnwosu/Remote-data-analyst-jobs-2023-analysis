-- Query 5: Most optimal skills (High demand AND high paying for remote)
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
GROUP BY 
    s.skills
HAVING 
    COUNT(sj.job_id) > 100
ORDER BY 
    demand_count DESC,
    avg_salary DESC
LIMIT 25