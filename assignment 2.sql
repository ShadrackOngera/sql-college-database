create database college;
USE college;

CREATE TABLE students ( student_id INT PRIMARY KEY AUTO_INCREMENT, first_name VARCHAR(20) NOT NULL, last_name VARCHAR(20) NOT NULL, street_address VARCHAR(20), city VARCHAR(20), state VARCHAR(20), zip VARCHAR(20));
INSERT INTO students VALUE (1, "Johnny", "Doe", "123 Main Street", "Nanticoke", "PA", 18634);
INSERT INTO students VALUE (2, "Jane", "Doe", "332 Elm Street", "Kingston", "PA", 18888);

CREATE TABLE departments ( department_id INT PRIMARY KEY AUTO_INCREMENT, department_name VARCHAR(255), building INT NOT NULL, chair_id INT NOT NULL, code VARCHAR(10) NOT NULL);
INSERT INTO departments VALUE (1, "Computer Information Systems", 7, 2, "CIS");
INSERT INTO departments VALUE (2, "Computer Science", 4, 3, "COS");



CREATE TABLE courses ( course_id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(255) NOT NULL, credit_hours INT NOT NULL, course_number INT NOT NULL, description VARCHAR(255));
INSERT INTO courses VALUE (1, "Database Design with SQL", 3, 148, "This course covers the use of SQL.");
INSERT INTO courses VALUE (2, "Programming with Java", 3, 156, "Learn to program with Java!!");


CREATE TABLE schedule ( schedule_id INT PRIMARY KEY AUTO_INCREMENT, start_time VARCHAR(255) NOT NULL, end_time VARCHAR(255) NOT NULL, room_number INT NOT NULL, sunday BOOLEAN, monday BOOLEAN, teusday BOOLEAN, wednesday BOOLEAN, thursday BOOLEAN, friday BOOLEAN, saturday BOOLEAN, online BOOLEAN NOT NULL);
INSERT INTO schedule VALUE (1, "12:20", "1:15", 707, 0, 1, 0, 1, 0, 1, 0, 0);
INSERT INTO schedule VALUE (2, "8:00", "9:20", 725, 0, 0, 1, 0, 1, 0, 0, 0);
INSERT INTO schedule VALUE (3, "8:00", "9:20", 725, 0, 0, 0, 1, 0, 0, 0, 1);

CREATE TABLE enrollment ( enrollment_id INT PRIMARY KEY AUTO_INCREMENT);
INSERT INTO enrollment VALUE (1);
INSERT INTO enrollment VALUE (2);

CREATE TABLE instructors ( instructor_id INT PRIMARY KEY AUTO_INCREMENT, first_name VARCHAR(20) NOT NULL, last_name VARCHAR(20) NOT NULL, office_number VARCHAR(7) NOT NULL, email VARCHAR(255), phone VARCHAR(20), office_hours VARCHAR(255) NOT NULL);
INSERT INTO instructors VALUE (1, "Bob", "Dushok", "701E", "bdushok@luzerne.edu", "570-740-0327", "MWF 8:00-9:00 & MW 1:15-2:15");
INSERT INTO instructors VALUE (2, "Earl", "Weidner", "701T", "eweidner@luzerne.edu", "570-740-0999", "MWF 7:00-8:00 & 10:00-11:00");
INSERT INTO instructors VALUE (3, "Nicole", "Saporito", "401", "nsaporito@luzerne.edu", "570-740-0888", "MWF 8:00-10:00");

CREATE TABLE semesters ( semester_id INT PRIMARY KEY AUTO_INCREMENT, season VARCHAR(10), year INT NOT NULL, code VARCHAR(10) NOT NULL, start_date VARCHAR(255), end_date VARCHAR(255));
INSERT INTO semesters VALUE (1, "Fall", 2022, "FA/2022", "08/28/2022", "12/17/2022 ");
INSERT INTO semesters VALUE (2, "Spring", 2022, "SP/2023", "01/17/2023", "05/12/2023");



ALTER TABLE courses ADD column departmentID  INT;
ALTER TABLE courses ADD CONSTRAINT adding_fk FOREIGN KEY (departmentID) REFERENCES departments(department_id);
UPDATE courses SET departmentID = 1 WHERE course_id = 1;
UPDATE courses SET departmentID = 1 WHERE course_id = 2;

ALTER TABLE schedule ADD column instructorID  INT;
ALTER TABLE schedule ADD CONSTRAINT instructor_fk_schedule FOREIGN KEY (instructorID) REFERENCES instructors(instructor_id);

ALTER TABLE schedule ADD column semesterID  INT;
ALTER TABLE schedule ADD CONSTRAINT semester_fk_on_schedule FOREIGN KEY (semesterID) REFERENCES semesters(semester_id);

UPDATE schedule SET instructorID = 1, semesterID = 2 WHERE schedule_id = 1;
UPDATE schedule SET instructorID = 1, semesterID = 1 WHERE schedule_id = 2;
UPDATE schedule SET instructorID = 1, semesterID = 1 WHERE schedule_id = 3;


ALTER TABLE enrollment ADD column studentID  INT;
ALTER TABLE enrollment ADD CONSTRAINT student_fk_on_enrollment FOREIGN KEY (studentID) REFERENCES students(student_id);

ALTER TABLE enrollment ADD column scheduleID  INT;
ALTER TABLE enrollment ADD CONSTRAINT schedule_fk_on_enrollment FOREIGN KEY (scheduleID) REFERENCES enrollment(enrollment_id);

UPDATE enrollment SET studentID = 1, scheduleID = 1 WHERE enrollment_id = 1;
UPDATE enrollment SET studentID = 2 WHERE enrollment_id = 2;
UPDATE enrollment SET scheduleID = 2 WHERE enrollment_id = 2;

ALTER TABLE instructors ADD column DepartmentID  INT;
ALTER TABLE instructors ADD CONSTRAINT department_fk_on_instructors FOREIGN KEY (DepartmentID) REFERENCES departments(department_id);

UPDATE instructors SET DepartmentID = 1 WHERE instructor_id = 1;
UPDATE instructors SET DepartmentID = 1 WHERE instructor_id = 2;
UPDATE instructors SET DepartmentID = 2 WHERE instructor_id = 3;


desc students;
desc courses;
desc schedule;
desc enrollment;
desc instructors;
desc semesters;
desc departments;

SELECT * FROM students;
SELECT * FROM courses;
SELECT * FROM schedule;
SELECT * FROM enrollment;
SELECT * FROM instructors;
SELECT * FROM semesters;
SELECT * FROM departments;
