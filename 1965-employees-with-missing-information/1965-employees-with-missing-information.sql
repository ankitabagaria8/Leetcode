# Write your MySQL query statement below
SELECT emp.employee_id AS employee_id FROM Employees AS emp
WHERE emp.employee_id NOT IN (SELECT E.employee_id FROM Employees AS E
JOIN Salaries AS S
ON E.employee_id = S.employee_id)
UNION 
SELECT sal.employee_id AS emp_id FROM Salaries AS sal
WHERE sal.employee_id NOT IN (SELECT E.employee_id FROM Employees AS E
JOIN Salaries AS S
ON E.employee_id = S.employee_id)
ORDER BY employee_id 


