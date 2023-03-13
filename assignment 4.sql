SHOW DATABASES;
USE tp0010;

select * from 148students.states;


SELECT r.name AS region_name, SUM(s.population) AS total_population
FROM region r
JOIN states s ON r.id = s.region_id
GROUP BY r.id
ORDER BY total_population DESC;


SELECT r.name AS region_name, SUM(s.population) AS total_population
FROM 148students.states r
JOIN 148students.states s ON r.id = s.region_id
GROUP BY r.id
ORDER BY total_population DESC;
