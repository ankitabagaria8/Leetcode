# Write your MySQL query statement below
SELECT C.question_id AS survey_log FROM 
(SELECT B.question_id, RANK() OVER (ORDER BY ratio DESC) AS ranking FROM 
(SELECT A.question_id, 
A.answer_cnt/A.show_cnt AS ratio FROM
(SELECT question_id, SUM(CASE WHEN action = 'show' THEN 1 ELSE 0 END) AS show_cnt, 
SUM(CASE WHEN action = 'answer' THEN 1 ELSE 0 END) AS answer_cnt
FROM SurveyLog
GROUP BY question_id) AS A) AS B) AS C
WHERE C.ranking = 1
ORDER BY question_id 
LIMIT 1



























# SELECT A.question_id AS survey_log FROM
# (SELECT question_id,  
# sum(CASE WHEN action = 'answer' THEN 1 ELSE 0 END)/sum(CASE WHEN action = 'show' THEN 1 ELSE 0 END) AS rate
# FROM SurveyLog
# GROUP BY question_id
# order by rate DESC, question_id) AS A
# LIMIT 1

























# SELECT A.question_id AS survey_log FROM 
# (SELECT question_id, 
# SUM(CASE WHEN action = 'answer' THEN 1 ELSE 0 END)/SUM(CASE WHEN action = 'show' THEN 1 ELSE 0 END)
# AS answer_percent
# FROM SurveyLog
# GROUP BY question_id
# order by answer_percent desc, question_id
# LIMIT 1) AS A
