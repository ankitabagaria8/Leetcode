# Write your MySQL query statement below

SELECT  B.R1_user AS user1_id,B.R2_user AS user2_id FROM
(SELECT A.R1_user,A.R2_user, RANK() OVER (ORDER BY cnt DESC) AS ranking FROM
(SELECT R1.user_id AS R1_user,R2.user_id AS R2_user,  COUNT(r1.follower_id) as cnt
FROM Relations AS R1
JOIN Relations AS R2
ON R1.follower_id = R2.follower_id 
AND R1.user_id < R2.user_id
GROUP BY R1.user_id,R2.user_id) AS A) AS B
WHERE ranking = 1