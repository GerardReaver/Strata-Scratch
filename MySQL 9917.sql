-- THIS IS A QUESTION BY GLASSDOOR AND SALESFORCE
# Compare each employee's salary with the average salary of the corresponding department.
# Output the department, first name, and salary of employees along with the average salary of that department.
WITH dept_avg AS (
    SELECT
        department,
        AVG(salary) AS avg_salary
    FROM employee AS e
    GROUP BY department
)
SELECT
    e.department,
    e.first_name,
    e.salary,
    d.avg_salary
FROM
    employee AS e
JOIN
    dept_avg AS d
    ON e.department = d.department
ORDER BY
    department
