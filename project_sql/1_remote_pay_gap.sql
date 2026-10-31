SELECT 
    CASE 
        WHEN job_location = 'Anywhere' THEN 'Remote'
        ELSE 'On-site'
    END AS work_type,
    COUNT(*) AS job_count,
    ROUND(AVG(salary_year_avg), 0) AS avg_salary
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
  AND salary_year_avg IS NOT NULL
GROUP BY work_type
ORDER BY avg_salary DESC;