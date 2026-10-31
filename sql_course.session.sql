-- Average salary Remote vs On-site for Data Analyst
SELECT 
    CASE 
        WHEN job_work_from_home = TRUE THEN 'Remote'
        ELSE 'On-site'
    END AS work_type,
    COUNT(*) AS number_of_jobs,
    ROUND(AVG(salary_year_avg), 0) AS avg_salary
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
  AND salary_year_avg IS NOT NULL
GROUP BY work_type;