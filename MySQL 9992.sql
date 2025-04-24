-- THIS IS A QUESTION BY SPOTIFY
# Find how many times each artist appeared on the Spotify ranking list.
# Output the artist name along with the corresponding number of occurrences.
# Order records by the number of occurrences in descending order.
SELECT
    artist,
    COUNT(position) AS n_occurence
FROM
    spotify_worldwide_daily_song_ranking
GROUP BY
    artist
ORDER BY
    n_occurence DESC
