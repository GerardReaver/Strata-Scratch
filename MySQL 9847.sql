-- THIS IS A QUESTION FROM AMAZON
# Find the number of workers by department who joined on or after April 1, 2014. Output the department name along with the corresponding number of workers. Sort the results based on the number of workers in descending order. 
SELECT
    department,
    COUNT(worker_id) AS nun_workers
FROM
    worker
WHERE
    joining_date >= '2014-04-01'
GROUP BY
    department
ORDER BY
    nun_workers DESC
