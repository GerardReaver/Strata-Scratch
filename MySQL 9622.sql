-- A PROBLEM TO BE SOLVED BY THE AIR BNB COMPANY
 SELECT
     city,
     property_type,
     AVG(bathrooms) AS avg_baths,
     AVG(bedrooms) AS avg_bedrooms
 FROM
     airbnb_search_details
 GROUP BY
     city, property_type
 -- THESE SHOWED HOW TO DO CALCULATIONS IN A QUERY AND AGGREGATE THE DATA IN A WAY THAT MADE CLEAR VISUAL SENSE TO A POTENTIAL BUSINESS PARTNER. 
