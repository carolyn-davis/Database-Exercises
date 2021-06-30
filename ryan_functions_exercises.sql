select concat(first_name, " ", last_name) as "full_name" #will smush together without space 
FROM employees; #concat is a great tool for putting string together

#Substring fuction: upper/lower case

SELECT SUBSTR("this, that, and the other", 1, 4); #substr("string/column of interest", index, number_of_characters)
#We can use the position function to obtain the indexx of the space character
SELECT substr("Ryan Orsinger", 1, position (" " IN "Ryan Orsinger"));
SELECT substr("John Doe", 1, position ("" IN "John Doe"));
#Only using 2 arguments means we default to the rest of the string
select substr("Brandon Sharpe", position(" " in "Brandon Sharpe"))

select position("b" in "abc");

select substr(first_name, 1,1), last_na
from employees;


select upper(first_name), lower(last_name)
from last employees;


select replace("123-456-789", "-", "");

select replace(first_name, "G", "J")
from employees;


SELECT NOW();
SELECT CURDATE();

#UNIX_TIMESTAMP represents time as an integer; it will return te number of seconds since the dawn of computing time 1/1/1970 midnight

select emp_no, hire_date
from employees;

#How many days has this person beeen here?
#How to subtract dates in mysql

select emp_no, datediff(curdate(), hire_date) as number_of_days_employed
from employees
order by number_of_days_employed DESC;

select dayname("1994-04-14"); #I was born on a Thursday

#Converting a timezone

select now();


#Average is a n aggregate function takes many values, gives us one value
select avg(salary) from salaries;
#max is an aggregate
select max(salary) from salaries where to_date > curdate();

#Min is an aggregate
select min(salary) from salaries where to_date > curdate();

#Casting take something that is one data type like an integer and treating it like a character or string

select cast("123.23" as float);
select cast("123.23" as char);




