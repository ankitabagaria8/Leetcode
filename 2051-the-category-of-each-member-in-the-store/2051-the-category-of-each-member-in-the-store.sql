# Write your MySQL query statement below

SELECT M.member_id, M.name, 
CASE WHEN C.conversion_rate >= 80 THEN 'Diamond'
WHEN C.conversion_rate >= 50 AND C.conversion_rate < 80 THEN 'Gold'
WHEN C.conversion_rate < 80 THEN 'Silver'
ELSE 'Bronze' END AS category
FROM
(SELECT A.member_id, (B.purchase_cnt/A.visit_cnt)*100 AS conversion_rate
FROM
(SELECT member_id, COUNT(visit_id) AS visit_cnt 
FROM visits
GROUP BY member_id) AS A
JOIN 
(SELECT member_id, IFNULL(COUNT(charged_amount),0) As purchase_cnt
FROM Visits as v
LEFT JOIN Purchases as p
ON V.visit_id = P.visit_id 
GROUP BY member_id) AS B
ON A.member_id = B.member_id) AS C
RIGHT JOIN Members AS M
ON M.member_id = C.member_id
ORDER BY M.member_id

 
