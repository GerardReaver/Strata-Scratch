-- THIS IS A QUESTION BY LYFT
# Find all Lyft drivers who earn either equal to or less than 30k USD or equal to or more than 70k USD. 
# Output all detials related to retrieved records
SELECT
    e.index,
    e.start_date,
    e.end_date,
    e.yearly_salary
FROM
    lyft_drivers AS e
WHERE
    yearly_salary <= 30000
    OR yearly_salary >= 70000
_____________________________________________________________________________________________________________
# Easier method is to skip the alias because of the index function
SELECT
    *
FROM
    lyft_drivers
WHERE
    yearly_salary <= 30000
    OR yearly_salary >= 70000
