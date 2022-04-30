# Write your MySQL query statement below

SELECT S.id, S.name FROM Departments AS D
RIGHT JOIN Students AS S
ON D.id = S.department_id 
WHERE D.name IS NULL
