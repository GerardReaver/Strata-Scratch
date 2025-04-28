-- THIS IS A QUESTION BY MICROSFOT AND AMZAON
# Find the number of employees working in the Admin department that joined in April or later
SELECT
    COUNT(worker_id) AS n_admins
FROM
    worker
WHERE
    department = 'Admin' 
    AND joining_date >= '2014-04-01'

-- THIS IS ONE WAY TO WRITE THE CODE OR YOU CAN JUST DO THE MONTH BECUASE THEY DIDN"T SPECIFY WHICH YEAR
SELECT
    COUNT(worker_id)
FROM
    worker
WHERE
    MONTH(joining_date) >= 4
    AND department = 'Admin'
