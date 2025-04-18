--THISI IS A QUESTION BY THE CITY OF SAN FRANCISCO GOVERNMENT JOB SECTOR. 
# You are given a dataset of health inspections that includes details about violations. Each row represents an inspection, and if an inspection resulted in a violation, the violation_id column will contain a value.
# Count the total number of violations that occurred at 'Roxanne Cafe' for each year, based on the inspection date. Output the year and the corresponding number of violations in ascending order of the year.
SELECT
    COUNT(violation_id) AS n_violations,
    YEAR(inspection_date) 
FROM
    sf_restaurant_health_violations
WHERE
    business_name = 'Roxanne Cafe'
GROUP BY
    YEAR(inspection_date)
ORDER BY
    YEAR(inspection_date) ASC
-- This was the solution to the problem. by typing YEAR, MONTH, or DAY in front of the attribute you would like to extract the date from. 
-- The rest of the code was simply putting the WHERE, GROUP BY and the ORDER BY commands to get the exact amount of data. 
--PROBLEM SOLVED CORECTLY
