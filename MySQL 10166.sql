-- THIS IS A QUESTION BY EXPEDIA AND AIRBNB
# Find how many reviews exist for each review score given to 'Hotel Arena'. Output the hotel name ('Hotel Arena'), each reivew score and the number of reviews for that score. Ensure teh results only include 'Hotel Arena'.
SELECT
    hotel_name,
    reviewer_score,
    count(total_number_of_reviews_reviewer_has_given) AS count
FROM
    hotel_reviews
WHERE
    hotel_name = 'Hotel Arena'
GROUP BY
    reviewer_score
