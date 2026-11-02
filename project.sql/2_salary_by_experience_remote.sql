SELECT
    CASE
        WHEN job_title ILIKE '%Senior%' THEN 'Senior'
        WHEN job_title ILIKE '%Lead%' THEN 'Lead / Principal'
        WHEN job_title ILIKE '%Junior%' OR job_title ILIKE '%Entry%' THEN 'Junior / Entry'
        ELSE 'Mid-Level / General'
    END AS experience_level,
    ROUND(AVG(salary_year_avg), 0) AS avg_salary,
    COUNT(job_id) AS total_jobs
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
  AND job_work_from_home = TRUE
  AND salary_year_avg IS NOT NULL
GROUP BY experience_level
ORDER BY avg_salary DESC;