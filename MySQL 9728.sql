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
