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