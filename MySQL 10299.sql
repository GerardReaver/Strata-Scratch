-- THIS IS A QUESTION BY MICROSOFT
# We have a table with employees and their salaries, however, some of the records are old and contain outdated salary information. 
# Find the current salary of each employee assuming that salaries increase each year. Output their id, first name, last name, department ID, and current salary. 
# Order your list by employee ID in ascending order. 
SELECT
    id,
    first_name,
    last_name,
    MAX(salary) AS updated_salary,
    department_id
FROM
    ms_employee_salary
GROUP BY
    id
ORDER BY
    id ASC
