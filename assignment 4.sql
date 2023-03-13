SHOW DATABASES;
USE tp0010;

select * from 148students.states;

-- Question One code
SELECT region, SUM(population) AS total_population
FROM 148students.states
GROUP BY region
ORDER BY total_population DESC;


-- Question 2 code
SELECT region, MIN(year) AS first_state_established
FROM 148students.states
GROUP BY region
ORDER BY first_state_established ASC;



