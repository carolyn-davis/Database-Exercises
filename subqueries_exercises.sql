/*-----------------Sub QUERIES EXERCISES--------------------*/
USE employees;
#1.)Find all the current employees with the same hire date as employee 101010 using a sub-query.

SELECT hire_date
FROM employees
WHERE emp_no like '101010';  #hire_date 1990-10-22



SELECT first_name, last_name, hire_date
FROM employees
WHERE emp_no IN 
(
    SELECT emp_no
    FROM dept_emp #<----grabs emp_no's of current employees
    WHERE to_date > NOW()
    )

AND hire_date LIKE '1990-10-22' ;

/*ALT WAY*/

SELECT * 
FROM employees
WHERE hire_date IN 
	(SELECT hire_date 
    	FROM employees 
    	WHERE emp_no = 101010)
    AND emp_no IN 
    (SELECT emp_no FROM dept_emp WHERE to_date > NOW()
    );
	   
#Soultion 55 records returned





#2.)Find all the titles ever held by all current employees with the first name Aamod.

SELECT DISTINCT title 
FROM titles
WHERE emp_no IN (SELECT emp_no 
				FROM employees
				WHERE first_name = 'Aamod');










#3.)How many people in the employees table are no longer working for the company? Give the answer in a comment in your code.

SELECT COUNT(*) as 'Count'
FROM employees 
WHERE emp_no NOT IN 
(SELECT emp_no 
	FROM dept_emp 
	WHERE to_date > NOW())
;

#Answer: 59900




#4.)Find all the current department managers that are female. List their names in a comment in your code.

SELECT first_name, last_name, gender
FROM employees
WHERE emp_no IN 
		(
		SELECT emp_no
		FROM dept_manager
		WHERE to_date > NOW()
							)
AND gender = 'F'
;
#Answer: Isamu, Karsten, Leon, Hilary




#5.)Find all the employees who currently have a higher salary than the companies overall, historical average salary.

SELECT *
FROM employees
WHERE emp_no IN
(
	SELECT emp_no
	FROM salaries
	WHERE  salary > 
	(SELECT AVG(salary) 
	FROM salaries) AND to_date > NOW());
	GROUP BY emp_no;  


            		 ;

#Answer: 154,543 records

/*SELECT AVG(salary)
FROM salaries;  #63810.448 Historical AVG*/






#6.)How many current salaries are within 1 standard deviation of the current highest salary? (Hint: you can use a built in function to calculate the standard deviation.) What percentage of all salaries is this?


SELECT COUNT(salary)
    FROM salaries
        WHERE salaries.to_date >= NOW()
            AND salary >= (SELECT MAX(salary) FROM salaries WHERE salaries.to_date >= NOW()) - 
            		(SELECT STD(salary) FROM salaries WHERE salaries.to_date >= NOW()) ;
            		
/*Step by Step review of Q6*/

select MAX(salary) - std(salary) from salaries where to_date > NOW(); #What is the number fugure for a salary 1 std away from the greatest salary

SELECT COUNT(*)
from salaries
where to_date > now()
and salray > select 








SELECT last_name
FROM employees;


SELECT DISTINCT title
FROM titles 
where emp_no in (SELECT emp_no 
				FROM employees 
			Where last_name = 'Facello' );



/* bpnus 









