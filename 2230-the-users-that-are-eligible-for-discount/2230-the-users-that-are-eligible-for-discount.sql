CREATE PROCEDURE getUserIDs(startDate DATE, endDate DATE, minAmount INT)
BEGIN
	# Write your MySQL query statement below.
	SELECT distinct user_id FROM Purchases 
    WHERE amount >= minAmount and time_stamp >= startDate and time_stamp <= endDate
    ORDER BY user_id;
END