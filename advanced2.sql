CREATE TABLE Department (
    emp_id 	INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender CHAR(1),
    birthdate DATE,
    email VARCHAR(100) UNIQUE,
    salary INT
);
INSERT INTO department(emp_id, first_name, last_name, gender, birthdate)
VALUES
	(9,'ajman','Tendulkar','M', DATE '1978-01-09'),
	(10,'Kkhan', 'Dev', 'M', DATE '1959-03-26'),
  	(11,'kahana','Root','M', DATE '1988-11-29'),
	(12,'Monib', 'Ali', 'M', DATE '1999-04-16') returning *;
INSERT INTO department
VALUES(1,'Annie','Smith','F', DATE '1988-01-09', 'ani@email.com',5000);
INSERT INTO employee
VALUES(1,'Annie','Smith','F', DATE '1988-01-09', 'ani@email.com',5000);
select * from department;
---------
INSERT INTO department
VALUES(1,'Annie','Rizzolo','F', DATE '1988-01-09', 'ani@email.com',5000)
ON CONFLICT(emp_id) DO UPDATE SET last_name = 'Rizzolo';
--------
INSERT INTO department
VALUES(1,'Annie','Rizzolo','F', DATE '1988-01-09', 'ani@email.com',5000)
ON CONFLICT(emp_id) DO UPDATE SET last_name = EXCLUDED.last_name;
------------------------
INSERT INTO department 
VALUES(1,'Annie','Rizzolo','F', DATE '1988-01-09', 'ani@email.com',5000)
ON CONFLICT(emp_id) where salary > 0 
DO UPDATE SET salary = 0;


