
-- Round the average number of facebook_likes to one decimal place
SELECT Round(AVG(facebook_likes), 1) AS avg_facebook_likes
FROM reviews
