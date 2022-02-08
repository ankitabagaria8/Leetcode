# Write your MySQL query statement below
SELECT B.buyer_id FROM (SELECT A.buyer_id, A.product_name, COUNT(DISTINCT product_name) as total FROM (SELECT product_name, p.product_id, buyer_id FROM Product AS P
JOIN Sales AS S 
ON P.product_id = S.product_id
WHERE product_name = 'S8' OR product_name = 'iPhone') AS A
GROUP BY buyer_id) AS B
WHERE total = 1 
AND B.product_name != 'iPhone'
