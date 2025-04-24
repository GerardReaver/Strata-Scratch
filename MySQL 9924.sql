-- THIS IS A QUESIOTN BY THE CITY OF SAN FRANCISCO
# Find libraries from the 2016 circulation year that have no email address provided but have their notice preference set to email. In your solution, output their home library code.
SELECT
    home_library_code
FROM
    library_usage
WHERE
    notice_preference_definition = 'email'
    AND provided_email_address < 1
GROUP BY
    home_library_code
