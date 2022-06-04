# Write your MySQL query statement below
# SELECT 
# U.user_id AS buyer_id, U.join_date, 
# SUM(CASE WHEN YEAR(O.order_date) = '2019' THEN 1 ELSE 0 END) AS orders_in_2019
# FROM Users AS U
# LEFT JOIN Orders AS O
# ON U.user_id = O.buyer_id
# GROUP BY U.user_id


SELECT 
U.user_id AS buyer_id, U.join_date,
IFNULL(COUNT(item_id),0) AS orders_in_2019
FROM Users AS U
LEFT JOIN (SELECT *FROM Orders WHERE YEAR(order_date) = '2019') AS O
ON U.user_id = O.buyer_id
GROUP BY U.user_id























# SELECT user_id as buyer_id, join_date, 
# SUM(CASE WHEN YEAR(order_date) = '2019' THEN 1 ELSE 0 END) AS orders_in_2019
# FROM Users AS U
# LEFT JOIN Orders AS O
# ON U.user_id = O.buyer_id 
# GROUP BY user_id
# order by user_id 


