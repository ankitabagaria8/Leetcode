# Write your MySQL query statement below
SELECT B.book_id, B.name
FROM Books AS B
LEFT JOIN Orders AS O
ON B.book_id = O.book_id 
WHERE available_from < DATE_SUB('2019-06-23', INTERVAL 1 MONTH)
GROUP BY B.book_id, B.name
HAVING SUM(CASE WHEN DATE(O.dispatch_date) > DATE_SUB('2019-06-23', INTERVAL 1 YEAR) THEN quantity ELSE 0 END) < 10;







