CREATE DATABASE library;
USE library;

-- CREATE TABLE patrons ( patrons_id INT PRIMARY KEY AUTO_INCREMENT, first_name VARCHAR(40) NOT NULL, last_name VARCHAR(40) NOT NULL, address VARCHAR(255), city VARCHAR(20), state VARCHAR(20), zip INT NOT NULL, library_card_id VARCHAR()5);
CREATE TABLE patrons (
    patrons_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    address VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    zip_code VARCHAR(10) NOT NULL,
    PRIMARY KEY (patrons_id),
    UNIQUE KEY (patrons_id)
);
CREATE TABLE collections ( collection_id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(30) NOT NULL);
CREATE TABLE categories ( category_id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(30) NOT NULL);
CREATE TABLE libraryMaterials ( material_id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(30) NOT NULL, length VARCHAR(30));
CREATE TABLE patronsLoans ( patrons_loan_id INT PRIMARY KEY AUTO_INCREMENT, loaned BOOLEAN NOT NULL);
CREATE TABLE users ( user_id INT PRIMARY KEY AUTO_INCREMENT, first_name VARCHAR(40) NOT NULL, last_name VARCHAR(40) NOT NULL, address VARCHAR(255), city VARCHAR(20), state VARCHAR(20), zip VARCHAR(20));
CREATE TABLE loanedItems ( loan_id INT PRIMARY KEY AUTO_INCREMENT, dateLoaned VARCHAR(50));


INSERT INTO patrons VALUE (1, "Jane", "Doe", "27th Avenue", "Boston", "PA", "87654");
INSERT INTO patrons VALUE (2, "James", "johnson", "27th circle street avenue", "Manchester", "PA", "23456");
INSERT INTO patrons VALUE (3, "elvin", "Eriksen", "30th Street", "Boston", "WA", "23456");
INSERT INTO patrons VALUE (4, "Brian", "Doe", "Mehems Highway Avenue", "Boston", "LA", "12345");
INSERT INTO patrons VALUE (5, "John", "Zed", "27th Circle", "Boston", "WI", "23989");

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

INSERT INTO loanedItems VALUE (1, "12/02/2023");
INSERT INTO loanedItems VALUE (2, "22/02/2023");
INSERT INTO loanedItems VALUE (3, "2/03/2023");
INSERT INTO loanedItems VALUE (4, "13/01/2023");
INSERT INTO loanedItems VALUE (5, "4/01/2023");
INSERT INTO loanedItems VALUE (6, "2/02/2023");

INSERT INTO users VALUE (1, "Melvin", "Peter", "jane street Avenue", "Compton", "LA", "87654");
INSERT INTO users VALUE (2, "Steward", "Drary", "10th street Avenue", "Boston", "WI", "87654");
INSERT INTO users VALUE (3, "Victor", "Doe", "13th street Avenue", "long beach", "LA", "87654");
INSERT INTO users VALUE (4, "Calvin", "Mary", "jane street Avenue", "Malibu", "LA", "87654");
INSERT INTO users VALUE (5, "Johnson", "Doe", "jane street Avenue", "Inglewood", "LA", "87654");

ALTER TABLE categories ADD column CollectionID  INT;
ALTER TABLE categories ADD CONSTRAINT collection_fk_categories FOREIGN KEY (CollectionID) REFERENCES collections(collection_id);
UPDATE categories SET CollectionID = 1 WHERE category_id = 1;
UPDATE categories SET CollectionID = 1 WHERE category_id = 2;
UPDATE categories SET CollectionID = 1 WHERE category_id = 3;
UPDATE categories SET CollectionID = 3 WHERE category_id = 4;
UPDATE categories SET CollectionID = 2 WHERE category_id = 5;

ALTER TABLE libraryMaterials ADD column CategoryID  INT;
ALTER TABLE libraryMaterials ADD CONSTRAINT category_fk_libraryMaterials FOREIGN KEY (CategoryID) REFERENCES categories(category_id);
UPDATE libraryMaterials SET CategoryID = 1 WHERE material_id = 1;
UPDATE libraryMaterials SET CategoryID = 2 WHERE material_id = 2;
UPDATE libraryMaterials SET CategoryID = 3 WHERE material_id = 3;
UPDATE libraryMaterials SET CategoryID = 4 WHERE material_id = 4;
UPDATE libraryMaterials SET CategoryID = 1 WHERE material_id = 5;

ALTER TABLE patronsLoans ADD column patronsID  INT;
ALTER TABLE patronsLoans ADD CONSTRAINT patrons_fk_patronsLoans FOREIGN KEY (patronsID) REFERENCES patrons(patrons_id);
UPDATE patronsLoans SET patronsID = 1 WHERE patrons_loan_id = 1;
UPDATE patronsLoans SET patronsID = 2 WHERE patrons_loan_id = 2;
UPDATE patronsLoans SET patronsID = 5 WHERE patrons_loan_id = 3;
UPDATE patronsLoans SET patronsID = 3 WHERE patrons_loan_id = 4;
UPDATE patronsLoans SET patronsID = 4 WHERE patrons_loan_id = 5;

ALTER TABLE loanedItems ADD column userID  INT;
ALTER TABLE loanedItems ADD CONSTRAINT users_fk_loanedItems FOREIGN KEY (userID) REFERENCES users(user_id);
UPDATE loanedItems SET userID = 1 WHERE userID = 1;
UPDATE loanedItems SET userID = 2 WHERE userID = 2;
UPDATE loanedItems SET userID = 3 WHERE userID = 3;
UPDATE loanedItems SET userID = 4 WHERE userID = 4;
UPDATE loanedItems SET userID = 2 WHERE userID = 5;


SHOW TABLES;

desc patrons;
desc collections;
desc categories;
desc libraryMaterials;
desc patronsLoans;
desc users;
desc loanedItems;

SELECT * FROM patrons;
SELECT * FROM collections;
SELECT * FROM categories;
SELECT * FROM libraryMaterials;
SELECT * FROM patronsLoans;
SELECT * FROM users;
SELECT * FROM loanedItems;





