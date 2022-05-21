# Write your MySQL query statement below
SELECT C.invoice_id, D.customer_name, C.price, C.contacts_cnt, C.trusted_contacts_cnt FROM
(SELECT A.invoice_id, A.price, IFNULL(A.contacts_cnt,0) AS contacts_cnt, 
IFNULL(B.trusted_contacts_cnt,0) AS trusted_contacts_cnt, A.user_id  FROM
(SELECT I.invoice_id, I.user_id, I.price, IFNULL(COUNT(Co.user_id),0) AS contacts_cnt
FROM Invoices AS I
LEFT JOIN Contacts AS Co
ON Co.user_id = I.user_id
GROUP BY I.invoice_id
ORDER BY I.invoice_id) AS A
LEFT JOIN
(SELECT user_id, 
SUM(CASE WHEN contact_email IN (SELECT email FROM Customers) THEN 1 ELSE 0 END) AS trusted_contacts_cnt
FROM Contacts
GROUP BY user_id) AS B
ON A.user_id = B.user_id
ORDER BY invoice_id) AS C
JOIN customers AS D
ON C.user_id = D.customer_id
ORDER BY invoice_id