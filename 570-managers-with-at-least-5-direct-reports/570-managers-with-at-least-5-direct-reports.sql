SELECT A.name FROM
(SELECT E2.name, COUNT(E1.id) AS num
FROM Employee AS E1
JOIN Employee AS E2
ON E1.managerId = E2.id 
GROUP BY E2.name) AS A
WHERE A.num >= 5






































# Write your MySQL query statement below
# SELECT P.NAME
# FROM Employee AS E
# JOIN Employee AS P
# ON E.managerid = P.id 
# GROUP BY E.ManagerId
# HAVING COUNT(E.managerId) >= 5

