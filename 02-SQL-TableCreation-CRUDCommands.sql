-- SQL Commands --
-- CREATE tables and INSERT DATA in the tables as given below:

-- ====================
-- Create items Table
-- ====================
-- Let us drop the items table and create the table if it exists

DROP TABLE IF EXISTS items;

-- CREATE A ITEM TABLE WITH THE FOLLOWING DETAILS
-- WE WANT TO CREATE A TABLE THAT CAPTURES ALL THE ITEMS SOLD BY THE KIRANA/DEPARTMENTAL STORE

CREATE TABLE IF NOT EXISTS items (
	itemid    INT UNSIGNED NOT NULL AUTO_INCREMENT,
	skuCode   VARCHAR(10)  NOT NULL ,
    itemCode  CHAR(5)                ,
	itemName  VARCHAR(40)  DEFAULT 'N/A',
    itemDesc  VARCHAR(50)  DEFAULT 'N/A' ,
    quntity   INT          DEFAULT 0 ,
    price     DECIMAL(7,2) DEFAULT 0.0,
	PRIMARY KEY (itemid)
);

INSERT INTO items VALUE (101,'PT234',2344, 'Noodles','Divyanjali Noodles-Small Pack',40,10);
INSERT INTO items VALUE (102,'PT235',2345, 'Noodles','Divyanjali Noodles-Double Pack',30,20);
INSERT INTO items VALUE (103,'PT236',2346, 'Noodles','Divyanjali Noodles-Family Pack',20,40);
INSERT INTO items VALUE (104,'PT237',2347, 'Noodles','Divyanjali Noodles-Bumper Pack',10,78);
INSERT INTO items VALUE (105,'PT238',2348, 'Buiscuits','Divyanjali Buiscuits-Singe Pack',40,5);
INSERT INTO items VALUE (106,'PT239',2349, 'Buiscuits','Divyanjali Buiscuits-Double Pack',30,10);
INSERT INTO items VALUE (107,'PT240',2350, 'Buiscuits','Divyanjali Buiscuits-Bumper Pack',10,40);
INSERT INTO items VALUE (108,'PT241',2351, 'Shampoo','Divyanjali Shampoo-Daily Pack',100,1);
INSERT INTO items VALUE (109,'PT242',2352, 'Shampoo','Divyanjali Shampoo-Medium Pack',30,30);
INSERT INTO items VALUE (110,'PT243',2353, 'Shampoo','Divyanjali Shampoo-Large Pack',10,15);
INSERT INTO items VALUE (111,'PT244',2354, 'Daliya','Divyanjali Daliya-250gm',10,35);
INSERT INTO items VALUE (112,'PT245',2354, 'Daliya','Divyanjali Daliya-500gm',5,70);
INSERT INTO items VALUE (113,'PT246',2355, 'Chocolates','Divyanjali-Organic-Healthy-Chocolates-Packet',10,100);
INSERT INTO items VALUE (114,'PT247',2356, 'Chocolates','Divyanjali-Organic-Healthy-Chocolates-LargePacket',5,200);
INSERT INTO items VALUE (115,'PT257',2357, 'Buiscuits Cream','Tania  Cream Buiscuits-Singe Pack',40,8);
INSERT INTO items VALUE (116,'PT258',2358, 'Buiscuits Cream','Tania  Cream Buiscuits-Double Pack',30,16);
INSERT INTO items VALUE (117,'PT259',2359, 'Buiscuits Cream','Tania  Cream Buiscuits-Bumper Pack',10,64);
INSERT INTO items VALUE (118,'PT260',2360, 'Chocolates Nuts','Gisan-Organic-Healthy-Chocolates-Packet',10,150);
INSERT INTO items VALUE (119,'PT261',2361, 'Chocolates Nuts','Gisan-Organic-Healthy-Chocolates-LargePacket',5,300);
INSERT INTO items VALUE (120,'PT262',2362, 'ToothPaste','Gabbar Toothpaste small pack',20,30);
INSERT INTO items VALUE (121,'PT263',2363, 'ToothPaste','Gabbar Toothpaste medium pack',10,50);
INSERT INTO items VALUE (122,'PT264',2364, 'ToothPaste','Dantamanjari  Toothpaste small pack',20,29);
INSERT INTO items VALUE (123,'PT265',2365, 'ToothPaste','Dantamanjari Toothpaste medium pack',10,48);
INSERT INTO items VALUE (124,'PT266',2366, 'ToothPaste Kids','Dantamanjari  Toothpaste kids small pack',20,35);
INSERT INTO items VALUE (125,'PT267',2367, 'ToothPaste Kids','Dantamanjari Toothpaste kids medium pack',10,65);

-- DISPLAY THE RECORDS 
SELECT * FROM items;


-- DISPLAY THE COUNT OF THE RECORDS 

SELECT COUNT(*) FROM items;


/***
	CREATE A TABLE FOR DEPARTMENTS IN THE DEPARTMENTAL STORE/SUPERMARKET/KIRANA STORE
*/

DROP TABLE IF EXISTS Departments;


CREATE TABLE IF NOT EXSITS Departments (
    dept_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(25) NOT NULL,
	PRIMARY KEY(dept_id)
);

INSERT INTO Departments
          (dept_id, name)
VALUES
		(11,'Warehouse-Stores'),
        (12,'Sales'),
        (13,'Security'),
        (14,'Transport');


---- Display the records from the departments 
		
SELECT * FROM Departments;

---  Display the number of records from the departments.

SELECT COUNT(*) FROM Departments;

/**
	CREATE A TABLE CUSTOMERS TO CAPTURE THE INFORMATION OF CUSTOMERS
*/

DROP TABLE IF EXISTS Customers;

CREATE TABLE IF NOT EXISTS customers (
    Id INT NOT NULL AUTO_INCREMENT,
    FName VARCHAR(35) NOT NULL,
    LName VARCHAR(35) NOT NULL,
    Email varchar(100) NOT NULL,
    PhoneNumber VARCHAR(14),
    PreferredContact VARCHAR(5) NOT NULL,
    PRIMARY KEY(Id)
);   		

INSERT INTO customers VALUES (10001,'Jignesh','Mahuwalia','jigenesh.mah@gmail.com','234-988-9876','email'),
							 (10002,'Mayank','Kathria','mnk2002@gmail.com','434-978-9076','email'),
							 (10003,'Nitin','Jain','nitinasme@gmail.com','934-978-9076','phone'),
							 (10004,'Hema','Shukla','hematomail11@gmail.com','984-998-8876','phone'),
							 (10005,'Nithya','Surendra','nithyas22@gmail.com','954-958-8376','phone'),
							 (10006,'Ramya','Reddy','ramyadvshyd@gmail.com','884-966-7788','email');
