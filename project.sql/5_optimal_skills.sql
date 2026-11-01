select
    skills_dim.skills,
    count(skills_job_dim.job_id) as demand_count,
    round(avg(job_postings_fact.salary_year_avg),0) as avg_salary
from job_postings_fact
inner join skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
inner join skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
where
    job_postings_fact.job_title_short = 'Data Analyst'
    and job_postings_fact.salary_year_avg is not null
    and job_postings_fact.job_work_from_home = True
group by
    skills_dim.skills
having
    count(skills_job_dim.job_id) > 10
order by
     avg_salary desc,
    demand_count desc 
limit 25;