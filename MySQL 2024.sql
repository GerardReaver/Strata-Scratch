-- THIS IS A QUESTION BY APPLE, DELL AND MICROSOFT
# Write a query that returns the number of unique users per client per month
SELECT
    COUNT(DISTINCT user_id),
    client_id,
    MONTH(time_id)
FROM
    fact_events
GROUP BY
    client_id, MONTH(time_id)
