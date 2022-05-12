# Write your MySQL query statement below

SELECT seller_name FROM Seller 
WHERE seller_id NOT IN (SELECT A.seller_id FROM
(SELECT seller_id, SUM((CASE WHEN YEAR(sale_date) = '2020' THEN 1 ELSE 0 END)) AS sale
FROM Orders
GROUP BY seller_id
HAVING sale > 0) AS A)
ORDER BY seller_name 
 