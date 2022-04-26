# Write your MySQL query statement below
SELECT employee_id, A.total AS team_size
FROM Employee 
JOIN (SELECT team_id, COUNT(team_id) AS total FROM Employee
GROUP BY team_id) AS A
ON A.team_id = Employee.team_id;