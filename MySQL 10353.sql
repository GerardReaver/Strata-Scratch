-- THIS IS A QUESTION BY AMAZON AND DOORDASH
# Find the job titles of the employees with the highest salary. If multiple employees have the same highest salary, include the job titles for all such employees.
SELECT
    t.worker_title
FROM
    worker AS w
JOIN
    title AS t
    ON w.worker_id = t.worker_ref_id
WHERE
    w.salary = (SELECT MAX(salary) FROM worker)
