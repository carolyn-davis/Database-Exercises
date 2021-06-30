USE join_example_db;


/* -------------------JOIN EXERCISES-------------------------*/

#JOIN EXAMPLE DATABASE
#2.)Use join, left join, and right join to combine results from the users and roles tables as we did in the lesson. Before you run each query, guess the expected number of results.
#Inner Join
SELECT users.name as user_name, roles.name as role_name 
FROM users
JOIN roles ON users.role_id = roles.id;

#LEFT Join
SELECT users.name AS user_name, roles.name AS role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;

#Right Join
SELECT users.name AS user_name, roles.name AS role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

#3.)Although not explicitly covered in the lesson, aggregate functions like count can be used with join queries. Use count and the appropriate join type to get a list of roles along with the number of users that has the role. Hint: You will also need to use group by in the query.

SELECT users.name AS user_name, COUNT(roles.name) AS role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id
GROUP BY role.name, users;


