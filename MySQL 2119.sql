-- THIS IS A QUESTION BY META
# You have been asked to find the 5 most lucarative products in terms of total revenue for the first half of 2022 (from Janurary to June inclusive).
SELECT
    product_id,
    SUM(cost_in_dollars * units_sold) AS total_revenue
FROM
    online_orders
WHERE
    date_sold BETWEEN '2022-01-01' AND'2022-06-30'
GROUP BY
    product_id
ORDER BY
    total_revenue DESC
LIMIT 5
