# Write your MySQL query statement below

SELECT follower, cnt2 AS num FROM
(SELECT follower, IFNULL(COUNT(followee),0) AS cnt1
FROM Follow 
GROUP BY follower) AS A
JOIN
(SELECT followee, IFNULL(COUNT(follower),0) AS cnt2
FROM Follow
GROUP BY followee) AS B
ON A.follower = B.followee
ORDER BY follower




























# SELECT followee AS follower, COUNT(followee) AS num FROM Follow 
# WHERE followee IN (SELECT follower FROM Follow)
# GROUP BY followee
# ORDER BY followee