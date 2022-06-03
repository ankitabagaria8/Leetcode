# Write your MySQL query statement below
SELECT dept_name AS Department, A.name AS Employee, A.salary AS Salary FROM
(SELECT E.id AS emp_id, E.name, E.salary, D.id AS dept_id, D.name AS dept_name,
 RANK() OVER (PARTITION BY D.id ORDER BY salary DESC) AS ranking
FROM Employee AS E
JOIN Department AS D
ON E.departmentId = D.id) AS A
WHERE ranking = 1





























# SELECT A.Department, A.Employee, A.salary
# FROM 
# (SELECT E.name AS Employee, D.name AS Department, salary, RANK() OVER (PARTITION BY departmentId ORDER BY salary DESC) AS ranking
# FROM Employee AS E
# JOIN Department AS D
# ON E.departmentId =D.id) AS A
# WHERE ranking = 1


