-- THIS IS A QUESTION BY LINKEDIN AND DROPBOX
# Calculates the difference between the highest salaries in the marketing and engineering departments. Output just the absolute difference in salaries.
SELECT
    ABS(
        (SELECT MAX(salary) 
            FROM db_employee AS e 
            JOIN db_dept AS d 
            ON e.department_id = d.id 
            WHERE d.department = 'engineering') -
        (SELECT MAX(salary) 
            FROM db_employee AS e 
            JOIN db_dept AS d 
            ON e.department_id = d.id 
            WHERE d.department = 'marketing')
    ) AS salary_difference

-- THIS WAS THE FIRST SOLUTION. IT USES THE ABSOLUTE DIFFERENCE FUNCITON 'ABS()' AND DOESN'T MATTER WHETHER YOU PUT ENGINEERING OR MARKETING FIRST. IT WILL GET THE CORRECT ANSWER BECAUSE IT SEARCHES FOR THE ABSOLUTE DIFFERENCE. 
# Here is another solution using CASE and conditions to reach the same output. 
SELECT
    CASE
        WHEN
            MAX(CASE WHEN d.department = 'marketing' THEN e.salary ELSE NULL END) >=
            MAX(CASE WHEN d.department = 'engineering' THEN e.salary ELSE NULL END)
        THEN
            MAX(CASE WHEN d.department = 'marketing' THEN e.salary ELSE NULL END) -
            MAX(CASE WHEN d.department = 'engineering' THEN e.salary ELSE NULL END)
        ELSE
            MAX(CASE WHEN d.department = 'engineering' THEN e.salary ELSE NULL END) -
            MAX(CASE WHEN d.department = 'marketing' THEN e.salary ELSE NULL END)
    END AS salary_difference
FROM
    db_employee AS e
JOIN
    db_dept AS d
    ON e.department_id = d.id
