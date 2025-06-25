# Write a query that shows:

# The event ID
# The start date formatted as "DD-MM-YYYY". Call this column formatted_start
# The end date formatted as “DD-MM-YYYY”. Call this column formatted_end
# The duration in days between start and end. Call this column duration_days
# Filter only the rows that the year of the start column is 2009 (STRFTIME() returns a string and not a number).

# Sort the results by the duration days in descending order.

# Reminder: To calculate the difference between dates use: JULIANDAY(end) - JULIANDAY(start)

SELECT
    id, 
    STRFTIME('%d-%m-%Y', start) AS formatted_start,
    STRFTIME('%d-%m-%Y', end) AS formatted_end,
    ROUND(JULIANDAY(end) - JULIANDAY(start)) AS duration_days
FROM 
    events
WHERE
    STRFTIME('%Y', start) = '2009'
ORDER BY
    duration_days DESC;
