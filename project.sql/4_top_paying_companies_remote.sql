select
    company_dim.name as company_name,
    round(avg(job_postings_fact.salary_year_avg),0) as average_salary,
    count(job_postings_fact.job_id) as job_count
from job_postings_fact
inner join company_dim on job_postings_fact.company_id = company_dim.company_id
where
    job_postings_fact.job_title_short = 'Data Analyst'
    and job_postings_fact.salary_year_avg is not null
    and job_postings_fact.job_work_from_home = True
group by
    company_dim.name
having
    count(job_postings_fact.job_id) > 5
order by
    average_salary desc
limit 15;
