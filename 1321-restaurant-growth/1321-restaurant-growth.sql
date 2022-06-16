# Write your MySQL query statement below

SELECT visited_on, amt AS amount, ROUND(avg_cnt,2) AS average_amount FROM
(SELECT visited_on, SUM(A.total_amount) OVER (ORDER BY visited_on range between interval 6 day preceding and current row)AS amt, AVG(A.total_amount) OVER (ORDER BY visited_on range between interval 6 day preceding and current row)AS avg_cnt,
ROW_NUMBER() OVER (ORDER BY visited_on) AS rnow FROM
(SELECT visited_on, SUM(amount) AS total_amount
FROM Customer 
GROUP BY visited_on 
ORDER BY visited_on) AS A ) AS B
WHERE rnow > 6

