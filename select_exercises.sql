USE fruits_db;

#Inspect the columns and data types from a table 

DESCRIBE fruits;

#Another way to inspect the columns and data types from a table 
SHOW COLUMNS
FROM fruits;

#Return all of the rows and columns from a table 

SELECT * 
FROM fruits;

#Select specific columns and all of the rows from those columns
SELECT
	name,
	quantity 
FROM fruits;

# B. SELECT DISTINCT STATEMENT
# Use chipotle database to demon a  db with duplicates

USE chipotle;

#Inspect the columns and data types from the orders table 
DESCRIBE orders;

#Return all of the rows and columns from a table (4622) records returned
SELECT *
FROM orders;

#Select specific columns and all of the rows from those columns 

SELECT 
	item_name
	quantity 
FROM orders;

#Return only the unique values from a column using the DISTINCT keyword 50 records returned

SELECT DISTINCT
	item_name
FROM orders;

#Filter Return sets using WHERE
#Filter so that only records with the value 'Chicken Bowl' in item_name are treturned 726 records

SELECT
	*
FROM orders
WHERE item_name = 'Chicken Bowl'

##### alt method
SELECT 
	item_name,
	order_id
FROM orders
WHERE item_name = 'Chicken Bowl'

###Filter by item_price. Why doesnt the QUERELY below run?

SELECT * 
FROM orders
Where item_price = '$2.39'.  #the item price is a string bc of the dollar sign--> needs quotes

#Filter using the primary key column, only obe record will be returned because the value must be unique

SELECT * 
FROM orders
WHERE id = 10;

#Filter using a WHERE clause with the BETWEEN & AND operators (Returns 39 records)

SELECT *
FROM orders 
WHERE quantity BETWEEN  3 AND 5;

##Filter using a WHERE statement >, <, <>, != operators
SELECT * 
FROM orders
WHERE order_id > 1500;
#if we wanna exclude an order ID

SELECT * #Select * refers 'select all'
FROM orders
WHERE order_id <> 1;

#Create Alias Using AS
#Create an alias for a column using the AS keyword (returns 267 records)

SELECT
	item_name AS 'Multiple Item Order',  #if you wan to include spaces into column names it has be included in those single quotes
	quantity
FROM orders
WHERE quantity >= 2;

 




