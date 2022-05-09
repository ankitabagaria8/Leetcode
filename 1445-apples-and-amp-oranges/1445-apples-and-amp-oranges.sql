# Write your MySQL query statement below
SELECT A.sale_date, A.diff FROM 
(SELECT sale_date, fruit, LAG(sold_num) OVER (partition by sale_date Order by sale_date) - sold_num AS diff
FROM Sales) AS A
WHERE A.diff IS NOT NULL
