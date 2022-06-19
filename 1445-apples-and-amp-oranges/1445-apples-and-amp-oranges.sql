# Write your MySQL query statement below

SELECT sale_date, diff FROM
(SELECT sale_date, sold_num - LEAD(sold_num) OVER (PARTITION BY sale_date) AS diff
FROM Sales) AS A
WHERE diff IS NOT NULL
















# SELECT sale_date, diff FROM
# (SELECT sale_date, sold_num - lead(sold_num) OVER(PARTITION BY sale_date ORDER by fruit) AS diff
# FROM Sales) AS A
# WHERE diff IS NOT NULL



# SELECT A.sale_date, A.diff FROM 
# (SELECT sale_date, fruit, LAG(sold_num) OVER (partition by sale_date Order by sale_date) - sold_num AS diff
# FROM Sales) AS A
# WHERE A.diff IS NOT NULL

