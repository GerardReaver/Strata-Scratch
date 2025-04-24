-- THIS IS A QUESTION BY GLASSDOOR AND SALESFORCE
# Compare each employee's salary with the average salary of the corresponding department.
# Output the department, first name, and salary of employees along with the average salary of that department.
SELECT
    e.department,
    e.first_name,
    e.salary,
    d.avg_salary
FROM
    employee AS e
JOIN (
    SELECT
        department,
        AVG(salary) AS avg_salary
    FROM
        employee
    GROUP BY
        department
        ) AS d
ON e.department = d.department
ORDER BY
    e.department
