SELECT email FROM Person 
group by email
HAVING COUNT(email) > 1;


