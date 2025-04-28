-- THIS IS A QUESTION BY META AND ASANA
/*
You have a dataset that records daily active users for each premium account. A premium account appears in the data every day as long as it remains premium. 
However, some premium accounts may be temporarily discounted, meaning they are not actively paying—this is indicated by a final_price of 0.
For each of the first 7 available dates, count the number of premium accounts that were actively paying on that day. Then, track how many of those same accounts remain premium and are still paying exactly 7 days later (regardless of activity in between).
Output three columns:
•   The date of initial calculation.
•   The number of premium accounts that were actively paying on that day.
•   The number of those accounts that remain premium and are still paying after 7 days.
*/
SELECT
    a.entry_date AS initial_date,
    COUNT(DISTINCT a.account_id) AS paying_accounts,
    COUNT(DISTINCT b.account_id) AS still_paying_accounts
FROM
    premium_accounts_by_day AS a
LEFT JOIN
    premium_accounts_by_day AS b
ON
    a.account_id = b.account_id
    AND b.entry_date = a.entry_date + INTERVAL 7 DAY
    AND b.final_price > 0
WHERE
    a.final_price > 0
GROUP BY
    a.entry_date
ORDER BY
    a.entry_date
LIMIT 7;
