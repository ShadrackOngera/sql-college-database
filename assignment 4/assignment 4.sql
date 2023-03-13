SHOW DATABASES;

select * from 148students.states;

-- Question One code
SELECT region, SUM(population) AS Total_Population_of_Region
FROM 148students.states
GROUP BY region
ORDER BY Total_Population_of_Region DESC;


-- Question 2 code
SELECT region, MIN(year) AS First_state_Established
FROM 148students.states
GROUP BY region
ORDER BY First_state_Established ASC;

-- Question 3 code
SELECT region, COUNT(*) AS Number_of_states_established_after_1850
FROM 148students.states
WHERE year > 1850
GROUP BY region
ORDER BY Number_of_states_established_after_1850 DESC;

