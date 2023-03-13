SHOW DATABASES;
USE tp0010;

select * from 148students.states;


SELECT region, SUM(population) AS total_population
FROM 148students.states
GROUP BY region
ORDER BY total_population DESC;


