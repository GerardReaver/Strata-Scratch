-- THIS IS A QUESTION BY AMAZON AND SHOPIFY
# Find order details made by Jill and Eva.
# Consider the Jill and Eva as first names of customers.
# Output the order date, details and cost along with the first name.
# Order records based on the customer id in ascending order.
SELECT
    c.first_name,
    o.order_date,
    o.order_details,
    o.total_order_cost
FROM
    customers AS c
INNER JOIN 
    orders AS o
    ON c.id = o.cust_id
WHERE
    c.first_name = 'Jill' 
    OR c.first_name = 'Eva'
ORDER BY
    o.cust_id ASC
