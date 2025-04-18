-- THIS IS A QUESTION BY THE AIR BNB COMPANY
# Find the average number of bathrooms and bedrooms for each city’s property types. Output the result along with the city name and the property type.
 SELECT
     city,
     property_type,
     AVG(bathrooms) AS avg_baths,
     AVG(bedrooms) AS avg_bedrooms
 FROM
     airbnb_search_details
 GROUP BY
     city, property_type
 -- SHOWED SIMPLE USE OF CALCULATIONS IN SQL
