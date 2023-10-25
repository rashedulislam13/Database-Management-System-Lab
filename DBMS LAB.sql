
use DBMS_LAB;

-- problem (1)


create table students(
first_name varchar(20),
last_name varchar(20),
age varchar(10),
major_sub varchar(40)
)
go
 

-- Insert a new record into the 'students' table
INSERT INTO students (first_name, last_name, age, major_sub) VALUES ('Rashedul', 'islam', 23, 'Computer Science');
INSERT INTO students (first_name, last_name, age, major_sub) VALUES ('Tanzil', 'Ahmed', 23, 'Math');
INSERT INTO students (first_name, last_name, age, major_sub) VALUES ('Kaneez', 'Fateema', 25, 'Biology');
select * from students;

-- Delete all records of students with the age of 25
DELETE FROM students WHERE age = 25;
select * from students;

-- Update the major of all students named 'Alice' to 'Biology'
UPDATE students
SET major_sub = 'ICE'
WHERE first_name = 'Rashedul';
select * from students;


--problem (2)
-- Create a new table named 'employees'
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hire_date DATE
);
go

select * from employees;

-- Insert a new employee record into the 'employees' table
INSERT INTO employees (employee_id, first_name, last_name, hire_date)
VALUES (5, 'John', 'Doe', '2023-10-20');
INSERT INTO employees (employee_id, first_name, last_name, hire_date)
VALUES (6, 'John', 'Doe', '2023-10-24');
INSERT INTO employees (employee_id, first_name, last_name, hire_date)
VALUES (7, 'John', 'Doe', '2023-10-26');
INSERT INTO employees (employee_id, first_name, last_name, hire_date)
VALUES (8, 'John', 'Doe', '2023-10-28');
select * from employees;


-- Add a 'salary' column to the 'employees' table
ALTER TABLE employees
ADD family_member DECIMAL(20);
select * from employees;

-- Delete the 'employees' table
DROP TABLE employees;



--Problem(3)
use University;
select all department_name 
from instructor;
select name from instructor
where department_name=' Comp. Sci.' and salary > 70000;


--Problem(4)
select department_name ,avg(salary) as average_salary
 from instructor
 group by department_name
 having avg(salary)>42000;

-- Retrieve all employees and order them by hire date in descending order
SELECT first_name, last_name, hire_date
FROM employees
ORDER BY hire_date DESC;

-- Create a view to retrieve information about high-value orders
CREATE VIEW high_salary AS
SELECT department_name, salary
FROM instructor
WHERE salary > 1000;
select * from high_salary;


-- Create an index on the 'email' column of the 'customers' table
CREATE INDEX slry
ON instructor (salary);

-- Display indexing information for a table in MySQL
EXEC sp_helpindex 'instructor';


--Problem (5)
-- Cartesian product of 'employees' and 'departments' tables
SELECT * 
FROM instructor
CROSS JOIN takes;

select * from takes;


--For all students in the university who have taken some 
--course, find their names and the course ID of all courses they took” as:
select name, id
from student natural join takes;   --this command does not support in sql 
--alternate code
 select * from student join takes on student.id=takes.id

 --“Find all students who have not taken a course” as:
 --left outer join
select *
from student natural left outer join takes;

--right outer join
select student.id
from student  right outer join takes on student.id=takes.id;

--full outer join
select *
from (select *
from student
where dept_name = ' Comp. Sci.')
natural full outer join
(select * from takes
where semester = ' spring' and year1 = 2017)


