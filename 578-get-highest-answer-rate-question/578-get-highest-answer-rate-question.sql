# Write your MySQL query statement below



SELECT A.question_id AS survey_log FROM
(SELECT question_id,  
sum(CASE WHEN action = 'answer' THEN 1 ELSE 0 END)/sum(CASE WHEN action = 'show' THEN 1 ELSE 0 END) AS rate
FROM SurveyLog
GROUP BY question_id
order by rate DESC, question_id) AS A
LIMIT 1

























# SELECT A.question_id AS survey_log FROM 
# (SELECT question_id, 
# SUM(CASE WHEN action = 'answer' THEN 1 ELSE 0 END)/SUM(CASE WHEN action = 'show' THEN 1 ELSE 0 END)
# AS answer_percent
# FROM SurveyLog
# GROUP BY question_id
# order by answer_percent desc, question_id
# LIMIT 1) AS A
