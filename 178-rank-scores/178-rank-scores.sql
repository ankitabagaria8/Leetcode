# Write your MySQL query statement below
SELECT A.score, a.rank_f AS `rank` FROM (SELECT id, score, 
dense_rank() over(order by score desc) as rank_f
FROM Scores) AS A