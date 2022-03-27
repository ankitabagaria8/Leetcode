# Write your MySQL query statement below
SELECT A.project_id FROM (SELECT project_id, COUNT(DISTINCT E.employee_id) AS total_count
FROM Project AS P
JOIN Employee AS E
ON E.employee_id = P.employee_id 
GROUP BY project_id) AS A
JOIN
(SELECT MAX(B.total_count) AS maximum FROM (SELECT project_id, COUNT(DISTINCT E.employee_id) AS total_count
FROM Project AS P
JOIN Employee AS E
ON E.employee_id = P.employee_id 
GROUP BY project_id) AS B) C
ON A.total_count = C.maximum



