# Write your MySQL query statement below
SELECT departure_airport AS airport_id FROM
(SELECT departure_airport,  
RANK() OVER (ORDER BY SUM(dept_total) DESC) AS ranking FROM 
(SELECT departure_airport, sum(flights_count) as dept_total
FROM Flights 
GROUP BY departure_airport
UNION 
SELECT arrival_airport, sum(flights_count) AS arrival_total
FROM Flights 
GROUP BY arrival_airport) AS A
GROUP BY departure_airport) AS B
WHERE ranking = 1



























# SELECT C.airport_id FROM 
# (SELECT B.departure_airport AS airport_id, RANK() OVER(ORDER BY B.total DESC) AS ranking
# FROM 
# (SELECT departure_airport, SUM(total_arrival) AS total FROM
# (SELECT departure_airport, SUM(flights_count) AS total_arrival 
# FROM Flights 
# GROUP BY departure_airport
# UNION ALL 
# SELECT arrival_airport, SUM(flights_count) AS total_arrival 
# FROM Flights
# GROUP BY arrival_airport) AS A
# GROUP BY departure_airport) AS B) AS C
# WHERE ranking = 1
