SELECT "HELLO WORLD";

SELECT VERSION(),CURRENT_DATE();
SELECT VERSION(), current_date();
SELECT Version(),Current_Date();
select version(),current_date();

SELECT 4*5;
SELECT SIN(PI()/6);

SELECT USER(),current_date();

/*
DATA TYPES in Mysql
Numeric Data types - INT, INTEGER, TINYINT - 1 Byte, SMALLINT - 2 Bytes,
						MEDIUMINT - 3 bytes,BIGINT - 4 bytes
DATE - DATE,TIME, DATETIME,TIMESTAMP and YEAR
STRING DATATYPES - CHAR, VARCHAR, BINARY, VARBINARY,BLOB,TEXT, ENUM & SET  
                    BLOB - TINYBLOB, MEDIUMBLOB,BLOB, LONGBLOB
                    TEXT - TINYTEXT,TEXT, MEDIUMTEXT and LONGTEXT
BOOL - BOOLEAN - TRUE / FALSE
                  
*/
-- Create a database
CREATE DATABASE kiranaDB;

-- DROP Database
DROP DATABASE kiranadb;

-- Create a database
CREATE DATABASE kiranadb;

-- Create a data if database not exists
CREATE DATABASE IF NOT EXISTS kiranadb;

-- Drop the database if it exists
DROP DATABASE IF EXISTS kiranadb;

-- VIEW ALL THE DATABASES
SHOW DATABASES;

-- Work with databases
USE kiranadb;

SELECT DATABASE();

SHOW CREATE DATABASE kiranadb;

USE sys;
SHOW TABLES;

USE kiranadb;

SHOW TABLES;

-- Create table in mysql using sql
CREATE TABLE IF NOT EXISTS items (
	itemid INT,
    itemName VARCHAR(40),
    manfacturer VARCHAR(50),
    itemDesc VARCHAR(50),
    quntity INT,
    price DECIMAL(7,2)
);

SHOW TABLES;

SHOW CREATE TABLE items;
/*
'items', 'CREATE TABLE `items` (\n  `itemid` int DEFAULT NULL,\n  `itemName` varchar(40) DEFAULT NULL,\n  `manfacturer` varchar(50) DEFAULT NULL,\n  `itemDesc` varchar(50) DEFAULT NULL,\n  `quntity` int DEFAULT NULL,\n  `price` decimal(7,2) DEFAULT NULL\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci'

*/

DESCRIBE items;

-- INSERT / add records to the items table 
INSERT INTO items VALUES(9001, 'Johnsonbabysoap', 'Johnson&Johnson','Used for babies', 30,105);

INSERT INTO items VALUES 
	(9002,'Patanjali Mixture','Patanjali Industries','An eatable item - Hot n spicy',20,10),
    (9002,'Patanjali Mixture','Patanjali Industries','An eatable item - Hot n spicy',20,10),
    (9003,'Navarantan Oil','HU','Thanda thanda cool cool',40,75);

-- SELECT ALL COLUMNS FROM A TABLE
SELECT * FROM items;
-- COUNT can be used to know the number of records in table
SELECT COUNT(*) FROM items;    

-- Select a single column from the table
SELECT itemid from items;

-- SELECT <col1>,<col2>, .... <coln> FROM <TABLE NAME>
SELECT itemid,itemname,price FROM items;