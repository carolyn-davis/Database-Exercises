#1.)Write a query that returns all employees (emp_no), their department number, their start date, their end date, and a new column 'is_current_employee' that is a 1 if the employee is still with the company and 0 if not.

USE employees;




SELECT emp_no, dept_no, to_date, from_date,
			
			IF(dept_emp.to_date > NOW(), True, False) AS is_current_employee
			
FROM dept_emp
ORDER BY is_current_employee;

#Write a query that returns all employee names (previous and current), and a new column 'alpha_group' that returns 'A-H', 'I-Q', or 'R-Z' depending on the first letter of their last name.


SELECT last_name,
	CASE 
	WHEN last_name BETWEEN 'a%' AND 'i%' THEN 'A-H'
	WHEN last_name BETWEEN 'i%' AND 'r%' THEN 'I-Q'
	WHEN last_name BETWEEN 'r%' AND 'z%' THEN 'R-Z'
	ELSE 'R-Z'
	END as alpha_group

	

FROM employees
ORDER By alpha_group; 


#3.)How many employees (current or previous) were born in each decade?

SELECT max(birth_date)  #1965-02-01
FROM employees;

SELECT min(birth_date)  #1952-02-01
FROM employees;





SELECT 
		CASE 
		WHEN birth_date LIKE '195%' THEN 'fifties'
		WHEN birth_date LIKE '196%' THEN 'sixties'
		ELSE 'Youngsters'
		END AS fifties_sixties,
	COUNT(*)	
FROM employees
GROUP BY fifties_sixties;
#Answer: fifties=182886
			#sixties= 117138

#Zoom out by using Group By Clause



 
