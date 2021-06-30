USE employees;

DESCRIBE employees;

SELECT DISTINCT title
FROM titles;
#7 unique titles

#3.)
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY last_name;
#Answer: 5 records returned

#4.)Write a query to to find all unique combinations of first and last names of all employees whose last names start and end with 'E'.
SELECT last_name, first_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY last_name, first_name;
#Answer: 846 records returned

#Write a query to find the unique last names with a 'q' but not 'qu'. Include those names in a comment in your sql code.

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';
#Answer: Chleq, Lindqvist, Qiwen

#6.)Add a COUNT() to your results (the query above) to find the number of employees with the same last name.
SELECT COUNT(*), last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name;
#189 Chleq 190 Lind 168 qiwen

#Find all all employees with first names 'Irena', 'Vidya', or 'Maya'. Use COUNT(*) and GROUP BY to find the number of employees for each gender with those names.

SELECT COUNT(*), first_name, gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY first_name, gender;


#Using your query that generates a username for all of the employees, generate a count employees for each unique username. Are there any duplicate usernames? BONUS: How many duplicate usernames are there?

SELECT  CONCAT(LOWER(SUBSTR(first_name, 1, 1)), LOWER(SUBSTR(last_name, 1, 4)), '_', SUBSTR(birth_date,6,2), (SUBSTR(birth_date,3, 2))) as username,
		COUNT('username') as unique_username_count
FROM employees
GROUP BY username
ORDER BY username, unique_username_count ASC; #285872


