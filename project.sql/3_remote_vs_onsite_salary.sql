SELECT 
    CASE 
        WHEN job_work_from_home = TRUE THEN 'Remote'
        ELSE 'Onsite'
    END AS work_type,
    ROUND(AVG(salary_year_avg), 0) AS avg_salary,
    COUNT(job_id) AS job_count
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
  AND salary_year_avg IS NOT NULL
GROUP BY work_type;