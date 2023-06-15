USE kiranaDB;

SELECT CAST( PI() AS FLOAT);

SELECT CAST('SQL  ' AS CHAR(10)) 
VARCHAR cannot be passed to CAST in MySQL
-- https://dev.mysql.com/doc/refman/8.0/en/cast-functions.html#function_cast
SELECT CAST('SQL' AS VARCHAR(3)) 

/*
=========================
NULLABLE VALUES IN MYSQL:
=========================
*/
create table items_null 
(
 itemId INT NOT NULL,
 itemCode INT NULL
);

-- Insert values in the items_null to check for which columns are affected in what way
INSERT INTO items_null VALUE (11,NULL); -- This query works fine
 
INSERT INTO items_null VALUE (NULL,1344); -- This query throws an error.


-- In the last session we have already created the items tables
-- lets change the column definitions using the ALTER command
ALTER TABLE items MODIFY itemid INT NOT NULL;

INSERT INTO items VALUE (NULL,'Patanjali Mixture','Patanjali Industries','An eatable item - Hot n spicy',20,10); 
-- Error is thrown item id cannot be null
-- We want to add a new column to our items table - new column is itemCode
ALTER TABLE items 
ADD itemCode INT NOT NULL;

--- SELECT THE items table from the DATABASE
SELECT * FROM items;
-- The display shows that the itemCode value is NULL

-- We see that values are duplicated in the above table , hence we shall see the concept called
-- as normalization


