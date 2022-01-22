SELECT E.name AS Employee FROM Employee AS E
JOIN Employee as J
ON E.managerid = J.id
WHERE E.salary > J.salary;


