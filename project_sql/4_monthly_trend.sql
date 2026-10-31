-- Which month had most Data Analyst openings in 2023?
SELECT 
    EXTRACT(MONTH FROM job_posted_date) AS month,
    COUNT(*) AS jobs_posted
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
GROUP BY month
ORDER BY month ;