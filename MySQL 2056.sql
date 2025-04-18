-- THIS IS A QUESTION BY AMAZON
# Write a query that will calculate the number of shipments per month. The unique key for one shipment is a combination of shipment_id and sub_id. Output the year_month in format YYYY-MM and the number of shipments in that month.
SELECT
  COUNT(shipment_id) AS count_shipment_id,
  DATE_FORMAT(shipment_date, '%Y-%m') AS date_ym
FROM
  amazon_shipment
GROUP BY
  DATE_FORMAT(shipment_date, '%Y-%m')
ORDER BY
  date_ym;
-- THIS LESSON TAUGHT HOW TO FORMAT DATES FOR DIFFERENT TYPES OF ANALYSIS
