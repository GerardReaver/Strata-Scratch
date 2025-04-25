-- THIS IS A QUESTION BY THE CITY OF SAN FRANCISCO
# Find the base pay for Police Captains.
# Output the employee name along with the corresponding base pay
SELECT
    employeename,
    basepay
FROM
    sf_public_salaries
WHERE
    jobtitle = 'CAPTAIN III (POLICE DEPARTMENT)'
