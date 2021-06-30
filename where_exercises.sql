#2.) Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya' using IN. Enter a comment with the number of records returned.

USE employees;
SELECT first_name 
FROM employees
Where first_name IN ('Irena', 'Vidya', 'Maya');
#Answer: 709 employees


# 3.)Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya', as in Q2, but use OR instead of IN. Enter a comment with the number of records returned. Does it match number of rows from Q2?

SELECT first_name 
FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';
#Returned yes, 709 records 

#4.) Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya', using OR, and who is male. Enter a comment with the number of records returned.

SELECT *
FROM employees
WHERE first_name = 'Irena' AND gender = 'M'
	OR first_name = 'Vidya' AND gender = 'M'
	OR first_name = 'Maya' AND gender = 'M';

#Answer 441 employees %%%%%

#5.)Find all current or previous employees whose last name starts with 'E'. Enter a comment with the number of employees whose last name starts with E.

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%';
#Answer: 7330 employees

#6.) Find all current or previous employees whose last name starts or ends with 'E'. Enter a comment with the number of employees whose last name starts or ends with E. How many employees have a last name that ends with E, but does not start with E?

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

#Answer: 30723 employees have names that start with 'e' or end with 'e'

SELECT last_name
FROM employees
WHERE last_name LIKE ('%E') AND last_name NOT LIKE ('E%');
#Second Answer: returned 23393 results.  %%%%%

#7.) Find all current or previous employees employees whose last name starts and ends with 'E'. Enter a comment with the number of employees whose last name starts and ends with E. How many employees' last names end with E, regardless of whether they start with E?

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';
#Answer: 899 employees 

SELECT last_name
FROM employees
WHERE last_name LIKE '%E';
#Answer #2: 132 employees

#8.)Find all current or previous employees hired in the 90s. Enter a comment with the number of employees returned.

SELECT hire_date
FROM employees
WHERE hire_date LIKE '190';
#Answer: 135,214 employees

#9.) Find all current or previous employees born on Christmas. Enter a comment with the number of employees returned.

SELECT birth_date
FROM employees
WHERE birth_date LIKE '%-12-25';
#Answer: 842 employees 

#10.) Find all current or previous employees hired in the 90s and born on Christmas. Enter a comment with the number of employees returned.

SELECT hire_date, birth_date
FROM employees
WHERE hire_date < '2000-1-1' AND hire_date > '1989-12-31'
	AND birth_date LIKE '%-12-25';
#Answer: 362 employees






#11.) Find all current or previous employees with a 'q' in their last name. Enter a comment with the number of records returned.

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%';
#Answer: 1873 employees












#12.)Find all current or previous employees with a 'q' in their last name but not 'qu'. How many employees are found?

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';
#Answer: 547 employees returned
	
