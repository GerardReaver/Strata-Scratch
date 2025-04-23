-- THIS IS A QUESITON BY AMADEUS, EXPEDIA, AND AIRBNB
# List all hotels along with their total number of reviews using the total_number_of_reviews column. Sort the results by total reviews in descending order.
SELECT
    hotel_name,
    total_number_of_reviews
FROM
    hotel_reviews
GROUP BY
    hotel_name
ORDER BY
    total_number_of_reviews DESC
