# # Write your MySQL query statement below


SELECT A.* FROM (SELECT name AS results FROM Users AS U
JOIN MovieRating AS MR
ON MR.user_id = U.user_id 
GROUP BY name 
ORDER BY count(*) DESC, name
LIMIT 1) AS A
UNION
SELECT B.* FROM (SELECT m.title AS results FROM movies AS M
JOIN MovieRating AS MR
ON MR.movie_id = M.movie_id 
WHERE MONTH(created_at) = 2 AND YEAR(created_at) = 2020
GROUP BY title
ORDER BY AVG(rating) DESC, title
LIMIT 1) AS B;




