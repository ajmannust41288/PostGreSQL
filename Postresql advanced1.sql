-- CREATE TABLE employeed(
-- 	emp_id INT PRIMARY KEY,
-- 	first_name VARCHAR(50) NOT NULL,
-- 	last_name VARCHAR(50) NOT NULL,
-- 	gender CHAR(1),
-- 	dept_id INT NOT NULL,
	    
--     FOREIGN KEY (dept_id) REFERENCES department(dept_id)
-- );
drop table if exists  employeed ;
drop table if exists  department;