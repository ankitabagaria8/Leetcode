# Write your MySQL query statement below
SELECT A.ad_id, 
IFNULL(ROUND((click_count/(A.view_count+ A.click_count))*100,2),0) AS ctr FROM 
(SELECT ad_id, SUM(CASE WHEN action = 'Clicked' THEN 1 ELSE 0 END) AS click_count, 
SUM(CASE WHEN action = 'Viewed' THEN 1 ELSE 0 END) AS view_count
FROM Ads 
GROUP BY ad_id) AS A 
ORDER BY ctr DESC, ad_id