# Write your MySQL query statement below
# SELECT DISTINCT page_id AS recommended_page FROM
# (SELECT page_id
# FROM Friendship AS F
# JOIN Likes AS L
# ON F.user2_id = L.user_id
# AND F.user2_id = L.user_id
# WHERE user1_id = 1 OR user2_id = 1
# AND page_id NOT IN (SELECT page_id FROM Likes WHERE user_id = 1)) AS A


# UNION 
# SELECT user2_id, user1_id, page_id
# FROM Friendship AS F
# JOIN Likes AS L
# ON F.user1_id = L.user_id 
# WHERE user2_id = 1
# AND page_id NOT IN (SELECT page_id FROM Likes WHERE user_id = 1)) AS A



























SELECT DISTINCT page_id AS recommended_page
FROM Friendship AS F
JOIN Likes AS L
ON F.user2_id = L.user_id 
OR F.user1_id = L.user_id 
WHERE (user1_id = 1 OR user2_id = 1)
AND page_id NOT IN (SELECT page_id FROM Likes WHERE user_id = 1)


