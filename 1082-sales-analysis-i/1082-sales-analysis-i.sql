# Write your MySQL query statement below

SELECT A.seller_id FROM (SELECT seller_id, SUM(price) AS max_sales FROM sales
GROUP BY seller_id
HAVING max_sales = (SELECT SUM(price) FROM Sales GROUP BY seller_id ORDER BY SUM(price) DESC LIMIT 1)) AS A







