# Write your MySQL query statement below
SELECT A. problem_id FROM (SELECT problem_id, likes/(likes+dislikes) AS percent
FROM Problems 
WHERE likes/(likes+dislikes) < 0.6) AS A
ORDER BY problem_id