--   THIS IS A QUESITON BY META
# Find all posts which were reacted to with a heart. For such posts output all columns from facebook_posts table. 
SELECT 
    fp.*
FROM 
    facebook_posts AS fp
JOIN 
    facebook_reactions AS fr
    ON fp.post_id = fr.post_id
WHERE 
    fr.reaction = 'heart'
GROUP BY
    fp.post_id
