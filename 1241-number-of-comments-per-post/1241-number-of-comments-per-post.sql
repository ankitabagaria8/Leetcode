# Write your MySQL query statement below


SELECT A.sub_id AS post_id, COUNT(DISTINCT S.sub_id)  AS number_of_comments FROM
(SELECT sub_id FROM Submissions WHERE parent_id IS NULL) AS A
LEFT JOIN Submissions AS S
ON A.sub_id = S.parent_id
GROUP BY A.sub_id





