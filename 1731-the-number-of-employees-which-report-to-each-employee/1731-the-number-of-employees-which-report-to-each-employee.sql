# Write your MySQL query statement below
SELECT A.report AS employee_id, A.man_name AS name,  COUNT(A.report) AS reports_count, ROUND(AVG(A.age_new),0)  AS average_age
FROM 
(SELECT E.employee_id, E.name AS emp_name, E.reports_to AS report, E.age AS age_new,  
M.employee_id AS man_id, M.name AS man_name, M.reports_to, M.age 
FROM Employees AS E
JOIN Employees AS M
ON E.reports_to = M.employee_id
WHERE E.reports_to IS NOT NULL) AS A
GROUP BY A.report
ORDER BY employee_id

