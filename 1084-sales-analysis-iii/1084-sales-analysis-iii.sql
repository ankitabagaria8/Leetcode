# # Write your MySQL query statement below

SELECT p.product_id, p.product_name FROM product AS P 
JOIN sales as S
ON P.product_id = S.product_id 
GROUP BY product_id
HAVING SUM(sale_date BETWEEN '2019-01-01' AND '2019-03-31') > 0 
AND SUM(sale_date > '2019-03-31' OR sale_date < '2019-01-01') = 0



