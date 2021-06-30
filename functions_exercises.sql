 

#Write a query to to find all employees whose last name starts and ends with 'E'. Use concat() to combine their first and last name together as a single column named full_name.

SELECT concat(first_name, " ", last_name) as full_name
FROM employees
WHERE last_name LIKE 'E%E';


#Convert the names produced in your last query to all uppercase

SELECT UPPER(concat(first_name, " ", last_name)) as full_name
FROM employees
WHERE last_name LIKE 'E%E';



#Find all employees hired in the 90s and born on Christmas. Use datediff() function to find how many days they have been working at the company (Hint: You will also need to use NOW() or CURDATE()),

SELECT datediff(curdate(), hire_date) as number_of_days_employed, first_name, last_name
FROM employees
WHERE hire_date < '2000-1-1' AND hire_date > '1989-12-31' 
	AND birth_date LIKE '%-12-25'
ORDER BY number_of_days_employed DESC;

#datediff(curdate(), hire_date) as number_of_days_employed


#Find the smallest and largest current salary from the salaries table.
select max(salary) 
from salaries 
where to_date > curdate(); #max 158220

select min(salary) 
from salaries 
where to_date > curdate(); #38623



#Use your knowledge of built in SQL functions to generate a username for all of the employees. A username should be all lowercase, and consist of the first character of the employees first name, the first 4 characters of the employees last name, an underscore, the month the employee was born, and the last two digits of the year that they were born. Below is an example of what the first 10 rows will look like:

SELECT CONCAT(LOWER(SUBSTR(first_name, 1, 1)), LOWER(SUBSTR(last_name, 1,4)), '_', SUBSTR(birth_date,6,2), (SUBSTR(birth_date,3,2))) as username,
first_name, last_name, birth_date
FROM employees
LIMIT 10;
