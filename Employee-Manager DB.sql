CREATE DATABASE emp;
USE emp;

CREATE TABLE employees(
emp_id INT primary key,
emp_name varchar(50),
manager_id INT default 1
);
INSERT INTO employees VALUES
(1, "Sachi", NULL),
(2, "Ayesha", 1),
(3, "Priya", 1),
(4, "Janvi", 2);

SELECT e.emp_name as Employee,
	   m.emp_name as Manager
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.emp_id;



