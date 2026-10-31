-- Query 3: What skills do entry-level Data Analysts need most?
SELECT 
    skills_dim.skills AS skill_name,
    COUNT(job_postings_fact.job_id) AS demand_count,
    ROUND(AVG(job_postings_fact.salary_year_avg), 0) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE 
    job_postings_fact.job_title_short = 'Data Analyst'
    AND (
        job_postings_fact.job_title ILIKE '%Entry%'
        OR job_postings_fact.job_title ILIKE '%Junior%'
        OR job_postings_fact.job_title ILIKE '%Associate%'
    )
GROUP BY 
    skills_dim.skills
HAVING 
    COUNT(job_postings_fact.job_id) >= 10
ORDER BY 
    demand_count DESC,
    avg_salary DESC
LIMIT 15;