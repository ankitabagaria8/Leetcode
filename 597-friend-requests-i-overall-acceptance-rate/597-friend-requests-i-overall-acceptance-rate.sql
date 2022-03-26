# Write your MySQL query statement below


SELECT CASE WHEN C.accept_rate is null then 0
ELSE C.accept_rate
END AS accept_rate
FROM
(SELECT ROUND(B.total_accept/A.total_sent,2) AS accept_rate FROM 
(SELECT COUNT(DISTINCT sender_id, send_to_id) AS total_sent FROM FriendRequest) AS A,
(SELECT COUNT(DISTINCT requester_id, accepter_id) AS total_accept FROM RequestAccepted) AS B ) AS C;