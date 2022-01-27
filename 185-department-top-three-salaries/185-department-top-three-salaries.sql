# Write your MySQL query statement below
SELECT A.department_name AS Department, A.Emp_name AS Employee, A.salary AS Salary
FROM (SELECT E.id, E.salary, E.departmentId, D.name as department_name, E.name as Emp_name,
dense_rank() over(partition by departmentId order by salary desc) as temp FROM Employee AS E
                JOIN Department as D
                ON E.departmentId = D.id) AS A
WHERE A.temp <= 3