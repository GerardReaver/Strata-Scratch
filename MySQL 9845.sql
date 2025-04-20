-- THIS IS A QUESTION BY MICROSFOT AND AMZAON
# Find the number of employees working in the Admin department that joined in April or later
SELECT
    COUNT(worker_id) AS n_admins
FROM
    worker
WHERE
    department = 'Admin' 
    AND joining_date >= '2014-04-01'

-- THIS is one way to write the code or you can put the WHERE ones on the same line
