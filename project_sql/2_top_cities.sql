-- Top 10 cities paying Data Analysts (excluding SF, Seattle, NYC)
SELECT 
    job_location,
    COUNT(*) AS job_count,
    ROUND(AVG(salary_year_avg), 0) AS avg_salary
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
  AND salary_year_avg IS NOT NULL
  AND job_location NOT LIKE '%San Francisco%'
  AND job_location NOT LIKE '%Seattle%'
  AND job_location NOT LIKE '%New York%'
GROUP BY job_location
HAVING COUNT(*) >= 10
ORDER BY avg_salary DESC
LIMIT 10;