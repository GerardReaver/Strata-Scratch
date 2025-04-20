-- THIS IS A QUESTION FROM THE CITY OF LOS ANGELES
# Find the inspection date and risk category(pe_description) of facilitiies named 'STREET CHURROS' that received a score below 95.  
SELECT
    activity_date,
    pe_description
FROM
    los_angeles_restaurant_health_inspections
WHERE
    facility_name = 'STREET CHURROS'
    AND score < 95
