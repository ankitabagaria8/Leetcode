# Write your MySQL query statement below
SELECT project_id, employee_id FROM 
(SELECT project_id, E.employee_id, experience_years, RANK() OVER(PARTITION BY project_id ORDER BY experience_years DESC) AS ranking 
FROM Project AS P
JOIN Employee AS E
ON P.employee_id = E.employee_id) AS A 
WHERE ranking = 1





























# SELECT A.project_id, A.employee_id FROM
# (SELECT P.project_id, E.employee_id, 
# RANK() OVER (Partition by project_id ORDER BY experience_years DESC) AS ranking
# FROM Project AS P
# JOIN Employee AS E
# ON P.employee_id = E.employee_id) AS A 
# WHERE ranking = 1

