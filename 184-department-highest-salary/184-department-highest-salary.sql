# Write your MySQL query statement below

SELECT A.Department, A.Employee, A.salary
FROM 
(SELECT E.name AS Employee, D.name AS Department, salary, RANK() OVER (PARTITION BY departmentId ORDER BY salary DESC) AS ranking
FROM Employee AS E
JOIN Department AS D
ON E.departmentId =D.id) AS A
WHERE ranking = 1


