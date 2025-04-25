-- THIS IS A QUESTION BY GOOGLE AND NETFLIX
# Count the number of movies for which Abigail Breslin was nominated for an Oscar
SELECT
    COUNT(movie) AS n_movies_by_abi
FROM
    oscar_nominees
WHERE
    nominee = 'Abigail Breslin'
