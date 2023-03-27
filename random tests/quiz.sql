-- Question 1
-- create a query which lists the number of courses within the CIS program which have either a prerequisite or corequisite courses. 
-- Courses which have prerequisite or corequisite courses are courses that contain the text 'prerequisite', 'prerequisites', 'coreqisite' 
-- or 'corequisites' within their course descriptions. Name your column heading appropriately.

SELECT * FROM 148students.catalog_courses;


SELECT COUNT(DISTINCT course_number) AS Number_of_CIS_courses_which_require_Prerequisite_or_Corequisite_courses
FROM 148students.catalog_courses
WHERE program = 'CIS'
AND (course_description LIKE '%prerequisite%' OR course_description LIKE '%prerequisites%' OR course_description LIKE '%corequisite%' OR course_description LIKE '%corequisites%');



-- Question 2
-- display the number of courses in each program with a course number 200 or greater. name your column headings appropriately. 
-- Your output should display programs in alphabetical order.


SELECT program, COUNT(course_number) AS Number_of_200_Level_Courses
FROM 148students.catalog_courses
WHERE course_number >= 200
GROUP BY program
ORDER BY program ASC;


