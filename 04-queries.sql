-- View all companies and jobs in the database.
SELECT * FROM companies; 

-- View all jobs in the database.
SELECT * FROM jobs; 

-- View all remote jobs.
SELECT * FROM jobs
WHERE location = 'Remote';

-- View all remote jobs within 65000 - 75000 salary range.
SELECT * FROM jobs
WHERE salary BETWEEN 65000 AND 75000 AND location = 'Remote';

-- View all jobs that are not remote and not in New York with a salary greater than 70000.
SELECT * FROM jobs 
WHERE location NOT IN ('Remote', 'New York') AND salary > 70000;

-- View all jobs from highest to lowest salary.
SELECT * FROM jobs
ORDER BY salary DESC;

-- View the top 5 highest paying jobs.
SELECT * FROM jobs
ORDER BY salary DESC
LIMIT 5;

-- Calculate the total, average, minimum, and maximum salary of all jobs in the database.
SELECT SUM(salary) AS total_salary, AVG(salary) AS average_salary, MIN(salary) AS minimum_salary, MAX(salary) AS maximum_salary
FROM jobs;

-- Count jobs per company and order by company_id.
SELECT company_id, COUNT(*)
FROM jobs
GROUP BY company_id
ORDER BY company_id;

-- Find companies with more than one job posting and order by company_id.
SELECT company_id, COUNT(*)
FROM jobs
GROUP BY company_id
HAVING COUNT(*) > 1
ORDER BY company_id;

-- Show companies and their jobs by joining the companies and jobs tables.
SELECT name, title
FROM companies
JOIN jobs ON companies.id = jobs.company_id;
