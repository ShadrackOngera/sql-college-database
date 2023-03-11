CREATE DATABASE library;
USE library;

CREATE TABLE patrons ( library_card_id INT PRIMARY KEY AUTO_INCREMENT, first_name VARCHAR(40) NOT NULL, last_name VARCHAR(40) NOT NULL, address VARCHAR(255), city VARCHAR(20), state VARCHAR(20), zip VARCHAR(20));
CREATE TABLE collections ( collection_id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(30) NOT NULL);
CREATE TABLE categories ( category_id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(30) NOT NULL);
CREATE TABLE libraryMaterials ( material_id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(30) NOT NULL), length VARCHAR(30);
CREATE TABLE patronsLoans ( patrons_loan_id INT PRIMARY KEY AUTO_INCREMENT, loaned BOOLEAN NOT NULL);
CREATE TABLE users ( user_id INT PRIMARY KEY AUTO_INCREMENT, first_name VARCHAR(40) NOT NULL, last_name VARCHAR(40) NOT NULL,);


INSERT INTO patrons VALUE (1, "Jane", "Doe", "27th Avenue", "Boston", "PA", "87654", "23E7N");
INSERT INTO patrons VALUE (2, "James", "johnson", "27th circle street avenue", "Manchester", "PA", "23456", "23W7N");
INSERT INTO patrons VALUE (3, "elvin", "Eriksen", "30th Street", "Boston", "WA", "23456", "13Q7N");
INSERT INTO patrons VALUE (4, "Brian", "Doe", "Mehems Highway Avenue", "Boston", "LA", "12345", "23E7Z");
INSERT INTO patrons VALUE (5, "John", "Zed", "27th Circle", "Boston", "WI", "2399", "93E0R");

INSERT INTO collections VALUE (1, "Books");
INSERT INTO collections VALUE (2, "Magazines");
INSERT INTO collections VALUE (3, "Audio CDs");
INSERT INTO collections VALUE (4, "DVD/Blu-Ray/UHD");

INSERT INTO categories VALUE (1, "Book-Fiction");
INSERT INTO categories VALUE (2, "Book-Non-Fiction");
INSERT INTO categories VALUE (3, "Book-Reference");
INSERT INTO categories VALUE (4, "Periodical");
INSERT INTO categories VALUE (5, "Audio Cd");
INSERT INTO categories VALUE (6, "DVD/Blu-Ray/UHD");

INSERT INTO libraryMaterials VALUE (1, "Rise of the titans", "200 Pages");
INSERT INTO libraryMaterials VALUE (2, "Biology Encyclopedia", "100 Pages");
INSERT INTO libraryMaterials VALUE (3, "AWS News Paper", "20 Pages");
INSERT INTO libraryMaterials VALUE (4, "Second Degree", "200 Pages");
INSERT INTO libraryMaterials VALUE (5, "How it is to live in space", "200 Pages");

INSERT INTO patronsLoans VALUE (1, 0);
INSERT INTO patronsLoans VALUE (2, 1);
INSERT INTO patronsLoans VALUE (3, 0);
INSERT INTO patronsLoans VALUE (4, 1);
INSERT INTO patronsLoans VALUE (5, 0);



