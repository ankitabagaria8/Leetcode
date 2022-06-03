CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
      
      SELECT (CASE WHEN MAX(ranking) < N THEN null ELSE A.salary END) AS getNthHighestSalary FROM
    (SELECT salary, DENSE_RANK() OVER (ORDER BY salary DESC) AS ranking FROM Employee) AS A
      WHERE A.ranking = N
      
  );
END















# CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
# BEGIN
#   RETURN (
#       # Write your MySQL query statement below.
      
#       SELECT CASE WHEN MAX(RANKING) < N THEN 'null' ELSE salary END AS getNthHighestSalary  FROM 
#       (SELECT id, salary, DENSE_RANK() OVER (ORDER BY salary DESC) AS ranking
#       FROM Employee) AS A
#       WHERE ranking = N
      
      
#   );
# END