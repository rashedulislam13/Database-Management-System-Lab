


create database University;
use University;


create table classroom (
building varchar(20),
room_number int  primary key ,
capacity int 

)
GO


 insert into classroom(building,room_number,capacity) values('Engin.',502,50)
 insert into classroom(building,room_number,capacity) values('scince.',501,40)
 insert into classroom(building,room_number,capacity) values('arts.',503,30)
 insert into classroom(building,room_number,capacity) values('arts.',504,50)
 insert into classroom(building,room_number,capacity) values('Engin.',402,60)
 insert into classroom(building,room_number,capacity) values('Engin.',403,40)
 insert into classroom(building,room_number,capacity) values('science.',404,35)
 insert into classroom(building,room_number,capacity) values('Engin.',301,34)
 insert into classroom(building,room_number,capacity) values('arts.',302,55)
 insert into classroom(building,room_number,capacity) values('Engin.',303,44)

 select * from classroom;



create table department (
department_name varchar(20) primary key,
building varchar(20) ,
budget int 

)
GO

 insert into department(department_name,building,budget) values('Comp. Sci.' ,'Taylor', 100000)
 insert into department(department_name,building,budget) values('Biology ','Watson', 90000)
 insert into department(department_name,building,budget) values('Elec. Eng. ','Taylor', 85000)
 insert into department(department_name,building,budget) values('Music',' Packard', 80000)
 insert into department(department_name,building,budget) values('Finance',' Painter', 120000)
 insert into department(department_name,building,budget) values('History',' Painter', 50000)
 insert into department(department_name,building,budget) values('Physics',' Watson', 70000)

  select * from department;



create table course (
course_id varchar(20) primary key,
title varchar(20) ,
department_name varchar(20),
credits int

)
GO

 insert into course(course_id,title,department_name,credits) values('BIO-101',' Intro. to Biology',' Biology', 4)
  insert into course(course_id,title,department_name,credits) values('BIO-301',' Genetics',' Biology', 4)
   insert into course(course_id,title,department_name,credits) values('BIO-399',' Computational Biology',' Biology', 3)
  insert into course(course_id,title,department_name,credits) values('CS-101',' Intro. to Computer Science',' comp. sci.', 4)
   insert into course(course_id,title,department_name,credits) values('CS-190',' Game Design',' comp. sci.', 4)
  insert into course(course_id,title,department_name,credits) values('CS-315',' Robotics',' comp. sci.', 3)
   insert into course(course_id,title,department_name,credits) values('CS-319',' Image Processing',' comp. sci.', 3)
  insert into course(course_id,title,department_name,credits) values('CS-347',' Database System Concepts',' comp. sci.', 3)
    insert into course(course_id,title,department_name,credits) values('EE-181',' Intro. to Digital Systems',' Elec. Eng.',3)
   insert into course(course_id,title,department_name,credits) values('FIN-201',' Investment Banking',' Finance',3)
  insert into course(course_id,title,department_name,credits) values('HIS-351',' World History',' History', 3)
   insert into course(course_id,title,department_name,credits) values('MU-199',' Music Video Production',' Music',3)
  insert into course(course_id,title,department_name,credits) values('PHY-101',' Physical Principles',' Physics', 4)

 select * from course;


 create table takes (
 id int primary key,
course_id varchar(20),
sec_id int,
semester varchar(20) ,
year1 int,
grade varchar(10)

)
 insert into takes(id,course_id,sec_id,semester,year1,grade) values(10109,' CS-101', 1,' Fall', 2017,'A+')
  insert into takes(id,course_id,sec_id,semester,year1,grade) values(10102,' CS-315', 1,' spring', 2018,'A+')
  insert into takes(id,course_id,sec_id,semester,year1,grade) values(10103,' CS-347', 1,' Fall', 2018,'A+')
  insert into takes(id,course_id,sec_id,semester,year1,grade) values(12121,' FIN-201', 1,' spring', 2017,'A+')
  insert into takes(id,course_id,sec_id,semester,year1,grade) values(15151,' MU-199', 1,' Fall', 2018,'A-')
  insert into takes(id,course_id,sec_id,semester,year1,grade) values(15151,' MU-199', 1,' Fall', 2018,'A-')
  insert into takes(id,course_id,sec_id,semester,year1,grade) values(45565,' PHY-101', 1,' spring', 2017,'A-')
  insert into takes(id,course_id,sec_id,semester,year1,grade) values(45565,' HIS-351', 1,' spring', 2018,'A-')
  insert into takes(id,course_id,sec_id,semester,year1,grade) values(10105,' CS-190', 1,' Fall', 2018,'A-')
  insert into takes(id,course_id,sec_id,semester,year1,grade) values(76766,' CS-190', 2,' Fall', 2017,'A-')
  insert into takes(id,course_id,sec_id,semester,year1,grade) values(76766,' BIO-301', 2,' spring', 2017,'A-')
  insert into takes(id,course_id,sec_id,semester,year1,grade) values(83821,' EE-181', 1,' spring', 2018,'A-')

  select*from takes;


create table instructor (
id  int  primary key,
name varchar(20),
department_name varchar(20),
salary int 

)
GO

 insert into instructor(id,name,department_name,salary) values(22222,' Karim',' Physics', 95000)
  insert into instructor(id,name,department_name,salary) values(12121,' Wu',' Finance', 90000)
  insert into instructor(id,name,department_name,salary) values(32343 ,'ElSaid ','History', 60000)
  insert into instructor(id,name,department_name,salary) values(45565,' Katz',' Comp. Sci.', 75000)
  insert into instructor(id,name,department_name,salary) values(98345,' Kim ','Elec. Eng.',80000)
  insert into instructor(id,name,department_name,salary) values(76766,' Crick',' Biology', 72000)
  insert into instructor(id,name,department_name,salary) values(10101,' Srinivasan',' Comp. Sci.', 65000)
  insert into instructor(id,name,department_name,salary) values(58583,' Califieri',' History', 62000)
   insert into instructor(id,name,department_name,salary) values(83821 ,'Brandt',' Comp. Sci.', 92000)
  insert into instructor(id,name,department_name,salary) values(15151,' Mozart',' Music', 40000)
  insert into instructor(id,name,department_name,salary) values(33456 ,'Gold',' Physics', 87000)
  insert into instructor(id,name,department_name,salary) values(76543 ,'Singh',' Finance', 80000)

  select * from instructor;


create table section (
course_id varchar(20) primary key,
sec_id int ,
semester varchar(20),
 year1   int,
 building varchar(20),
 room_number int,
 time_slot_id varchar(5)

)
GO




 insert into section(course_id,sec_id,semester,year1,building,room_number,time_slot_id) values('BIO-101', 1,' Summer', 2017, 'Painter', 514, 'B')
  insert into section(course_id,sec_id,semester,year1,building,room_number,time_slot_id) values('BIO-301', 1,' spring', 2017, 'Painter', 514, 'B')
  insert into section(course_id,sec_id,semester,year1,building,room_number,time_slot_id) values('cs-101', 1,' Fall', 2017, 'Painter', 514, 'B')
  insert into section(course_id,sec_id,semester,year1,building,room_number,time_slot_id) values('cs-102', 1,' Summer', 2017, 'Painter', 514, 'B')
  insert into section(course_id,sec_id,semester,year1,building,room_number,time_slot_id) values('cs-190', 1,' spring', 2017, 'Painter', 514, 'B')
  insert into section(course_id,sec_id,semester,year1,building,room_number,time_slot_id) values('cs-196', 1,' Summer', 2017, 'Painter', 514, 'B')
  insert into section(course_id,sec_id,semester,year1,building,room_number,time_slot_id) values('EE-101', 1,' Fall', 2017, 'Painter', 514, 'B')
  insert into section(course_id,sec_id,semester,year1,building,room_number,time_slot_id) values('FIN-102', 1,' Summer', 2017, 'Painter', 514, 'B')
  insert into section(course_id,sec_id,semester,year1,building,room_number,time_slot_id) values('BIO-104', 1,' spring', 2017, 'Painter', 514, 'B')
  insert into section(course_id,sec_id,semester,year1,building,room_number,time_slot_id) values('BIO-305', 1,' Summer', 2017, 'Painter', 514, 'B')
  insert into section(course_id,sec_id,semester,year1,building,room_number,time_slot_id) values('cs-104', 1,' Fall', 2017, 'Painter', 514, 'B')
  insert into section(course_id,sec_id,semester,year1,building,room_number,time_slot_id) values('cs-105', 1,' spring', 2017, 'Painter', 514, 'B')
  insert into section(course_id,sec_id,semester,year1,building,room_number,time_slot_id) values('cs-191', 1,' Summer', 2017, 'Painter', 514, 'B')
  insert into section(course_id,sec_id,semester,year1,building,room_number,time_slot_id) values('cs-192', 1,' spring', 2017, 'Painter', 514, 'B')
  insert into section(course_id,sec_id,semester,year1,building,room_number,time_slot_id) values('EE-102', 1,' Fall', 2017, 'Painter', 514, 'B')
  insert into section(course_id,sec_id,semester,year1,building,room_number,time_slot_id) values('FIN-103', 1,' Summer', 2017, 'Painter', 514, 'B')

  select * from section;



create table teaches (
id int,
course_id varchar(20),
sec_id int ,
semester varchar(20),
 year1   int,
 
)
GO

 insert into teaches(id,course_id,sec_id,semester,year1) values(10101,' CS-101', 1,' Fall', 2017)
  insert into teaches(id,course_id,sec_id,semester,year1) values(10101,' CS-315', 1,' spring', 2018)
  insert into teaches(id,course_id,sec_id,semester,year1) values(10101,' CS-347', 1,' Fall', 2018)
  insert into teaches(id,course_id,sec_id,semester,year1) values(12121,' FIN-201', 1,' spring', 2017)
  insert into teaches(id,course_id,sec_id,semester,year1) values(15151,' MU-199', 1,' Fall', 2018)
  insert into teaches(id,course_id,sec_id,semester,year1) values(45565,' PHY-101', 1,' spring', 2017)
  insert into teaches(id,course_id,sec_id,semester,year1) values(45565,' HIS-351', 1,' spring', 2018)
  insert into teaches(id,course_id,sec_id,semester,year1) values(10101,' CS-190', 1,' Fall', 2018)
  insert into teaches(id,course_id,sec_id,semester,year1) values(76766,' CS-190', 2,' Fall', 2017)
  insert into teaches(id,course_id,sec_id,semester,year1) values(76766,' BIO-301', 2,' spring', 2017)
  insert into teaches(id,course_id,sec_id,semester,year1) values(83821,' EE-181', 1,' spring', 2018)

   select * from teaches;



create table prereq (
course_id varchar(20),
prereq_id varchar(20),

)
GO

  insert into prereq(course_id,prereq_id) values('BIO-301',' BIO-101')
   insert into prereq(course_id,prereq_id) values('BIO-399',' BIO-101')
   insert into prereq(course_id,prereq_id) values('CS-319',' CS-101')
   insert into prereq(course_id,prereq_id) values('CS-347',' CS-101')
   insert into prereq(course_id,prereq_id) values('CS-190',' CS-101')
   insert into prereq(course_id,prereq_id) values('CS-315',' CS-101')
   insert into prereq(course_id,prereq_id) values('EE-181',' BIO-101')
   
    select * from prereq;


create table student (
id int primary key,
name varchar(20),
dept_name varchar(20),
tot_cred int

)
GO

insert into student(id,name,dept_name,tot_cred) values (10109,'karim','PHY',130)
insert into student(id,name,dept_name,tot_cred) values (10103,'rarim','CHEM',135)
insert into student(id,name,dept_name,tot_cred) values (10102,'farim','BIO',130)
insert into student(id,name,dept_name,tot_cred) values (105,'jarim','MATH',130)
insert into student(id,name,dept_name,tot_cred) values (106,'parim','MATH',135)
insert into student(id,name,dept_name,tot_cred) values (107,'sarim','PHY',130)
insert into student(id,name,dept_name,tot_cred) values (108,'darim','CHEM',135)
insert into student(id,name,dept_name,tot_cred) values (109,'larim','ICE',130)
insert into student(id,name,dept_name,tot_cred) values (110,'tarim','EE',135)
insert into student(id,name,dept_name,tot_cred) values (111,'marim','IT',130)
insert into student(id,name,dept_name,tot_cred) values (112,'harim','ICT',135)
insert into student(id,name,dept_name,tot_cred) values (113,'zarim','CSE',130)

  select * from student;





  
  --To remove duplicates value
select distinct department_name
from instructor;

--without remove duplicates value
select all department_name 
from instructor;

--To show extra column with increase salary 
select id,name,department_name,salary,salary * 1.1 as update_salary
from instructor;

--“Find the names of all instructors in the Computer Science department who have salary greater than $70,000.”
select name from instructor
where department_name=' Comp. Sci.' and salary > 70000;


--To find name, department name , building from instructor and department table where must be matched those department name between two table
select name ,instructor.department_name,building 
from instructor,department
where instructor.department_name = department.department_name;



--To find name, course_id from instructor and teaches table where must be matched those id between two table
select  name, course_id
from instructor, teaches
where instructor.ID= teaches.ID;


--if we want the attribute name 'name' to be replaced with the name 'instructor name', we can rewrite the preceding query as:
select name as instructor_name, course_id
from instructor, teaches
where instructor.id= teaches.id;



--“For all instructors in the university who have taught some course, find their names and the course ID of all courses they taught.”
select T.name, S.course_id
from instructor as T, teaches as S
where T.id= S.id;


--“Find the names of all instructors whose salary is greater than at least one instructor in the Biology department.” We can write the SQL expression:
select distinct T.name
from instructor as T, instructor as S    --problem
where T.salary > S.salary and S.department_name = 'Biology';



--“Find the names of all departments whose building name includes the substring 'Watson'.” This query can be written as: 
select department_name,building,budget
from department
where building like '%Watson%';


--To list in alphabetic order all instructors in the Physics department, we write:
select id, name,department_name
from instructor
where department_name = ' Comp. Sci.'
order by name asc;

select id, name,department_name
from instructor
where department_name = ' Comp. Sci.'
order by id desc;


--If we wish to find the names of instructors with salary amounts between $90,000 and $100,000, we can use the between comparison to write:
select name,salary
from instructor
where salary between 90000 and 100000;


select name,salary
from instructor
where salary <= 100000 and salary >= 90000;

                
				--set operation--
--The set of all courses taught in the Fall 2017 semester:
select course_id,semester,year1
from section
where semester = ' Fall' and year1= 2017;


--The set of all courses taught in the Spring 2018 semester:
select course_id,semester,year1
from section
where semester = ' spring' and year1= 2018;



           --Union operation--
--To find the set of all courses taught either in Fall 2017 or in Spring 2018, or both, we write:
(select course_id
from section
where semester = ' Fall' and year1= 2017)
union
(select course_id
from section
where semester = ' spring' and year1= 2018);



--If we want to retain all duplicates, we must write union all in place of union:
(select course_id
from section
where semester = ' Fall' and year1= 2017)
union all
(select course_id
from section
where semester = ' spring' and year1= 2018);



             --intersect--
--To find the set of all courses taught in both the Fall 2017 and Spring 2018, we write:
(select course_id
from section
where semester = ' Fall' and year1= 2017)
intersect 
(select course_id
from section
where semester = ' spring' and year1= 2018);



--To find all courses taught in the Fall 2017 semester but not in the Spring 2018 semester, we write:
(select course_id
from section
where semester = ' Fall' and year1= 2017)
except 
(select course_id
from section
where semester = ' spring' and year1= 2018);




--Aggregate Functions
 --Average: avg
-- Minimum: min
--Maximum: max
--Total: sum
--Count: count

 --“Find the average salary of instructors in the Computer Science department.” We write this query as follows:
 select avg (salary) as average_salary
 from instructor
 where department_name = ' Comp. Sci.';

  --“Find the total number of instructors who teach a course in the Spring 2018 semester.”
 select count (distinct id) as Number_of_instructor
from teaches
where semester = ' spring' and year1 = 2018;


 --“Find the average salary in each department.” We write this query as follows:
 select department_name, avg(salary) as average_salary
 from instructor
 group by department_name;




 --“Find the number of instructors in each department who teach a course in the Spring 2018 semester.”
select department_name, count (distinct instructor.id ) as instructor_number
from instructor, teaches
where instructor.id = teaches.id and                 
semester = ' spring' and year1 = 2018
group by department_name;

select * from instructor
select * from teaches

 --we might be interested in only those departments where the average salary of the instructors is more than $42,000.
 select department_name ,avg(salary) as average_salary
 from instructor
 group by department_name
 having avg(salary)>42000;     --having clause is used bcz avg(salary) is not a attribute in any table 


 --To find all the course taught fall 2017 or spring 2018 semester
select distinct course_id
from section
where semester = ' Fall' and year1= 2017 and
course_id in (select course_id
from section
where semester = ' Spring' and year1= 2018);



--For example, to find all the courses taught in the Fall 2017 semester but not in the Spring 2018 semester, which we expressed earlier using the except operation, we can write:
select distinct course_id
from section
where semester = ' Fall' and year1= 2017 and
course_id not in (select course_id
from section
where semester = ' Spring' and year1= 2018);




--“Find the names of all instructors whose salary is greater than at least one instructor in the Biology department.”
select T.name,T.salary 
from instructor as T , instructor as S
where T.salary > S.salary and S.department_name = ' Music'; 

---------or------------
--< some, <= some, >= some, = some, and <> some comparisons
select name,salary
from instructor
where salary > some (select salary
from instructor
where department_name = ' Music');

select name,salary
from instructor
where salary > all (select salary
from instructor
where department_name = ' Music');





 --“Find the average instructors’ salaries of those departments where the average salary is greater than $42,000.”
select department_name, avg_salary
from (select department_name, avg (salary) as avg_salary
from instructor
group by department_name)   -----problem------
where avg_salary > 42000;


--Suppose that we want to make each student in the Music department who has earned more 
--than 129 credit hours an instructor in the Music department with a salary of $18,000. We write:
insert into instructor
select id, name, dept_name, 18000
from student
where tot_cred > 129;


--Suppose that annual salary increases are being made, and salaries of all instructors are to be increased by 5 percent. We write:
update instructor 
set salary = salary * 1.05;


--If a salary increase is to be paid only to instructors with a salary of less than $70,000, we can write:
update instructor
set salary = salary * 1.05
where salary < 70000;



--“Give a 5 percent salary raise to instructors whose salary is less than average” as follows:
update instructor 
set salary = salary * 1.05
where salary < (select avg (salary)
from instructor);

--use nested case for updating
update instructor
set salary = case
when salary <= 100000 then salary * 1.05
else salary * 1.03
end










select * from teaches;
select * from instructor;
select * from student;
select * from section;
select * from department;



















use DBMS_LAB;

-- problem (1)  insert , delete , update 


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


--problem (2)  create , alter , drop
-- Create a new table named 'employees'
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hire_date DATE
);
go
drop table employees;
select * from employees;

-- Insert a new employee record into the 'employees' table
INSERT INTO employees (employee_id, first_name, last_name, hire_date)
VALUES (1, 'Rashedul', 'Islam', '2023-10-20'),(2, 'Rashedul', 'Islam', '2022-10-20'),
		(3, 'Rashedul', 'Islam', '2023-10-21'),(4, 'Rashedul', 'Islam', '2022-10-21'),
		(5, 'Rashedul', 'Islam', '2023-10-22'),(6, 'Rashedul', 'Islam', '2022-10-22'),
		(7, 'Rashedul', 'Islam', '2023-10-23'),(8, 'Rashedul', 'Islam', '2022-10-23');
select * from employees;


-- Add a 'salary' column to the 'employees' table
ALTER TABLE employees
ADD family_member DECIMAL(20);

INSERT INTO employees (employee_id, first_name, last_name, hire_date,family_member) VALUES (9, 'Rashedul', 'Islam', '2021-10-20',5);
select * from employees;

-- Delete the 'employees' table
DROP TABLE employees;



--Problem(3)   select, from , where clause
use University;
select all department_name 
from instructor;
select name from instructor
where department_name=' Comp. Sci.' and salary > 70000;


--Problem(4) Group by & having , order by , create view, indexing and procedure clause
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
where semester = ' spring' and year1 = 2017);


--Problem (6)
--“Find the average salary of instructors in the Computer Science department.” We write this query as follows:
 select avg (salary) as average_salary
 from instructor
 where department_name = ' Comp. Sci.';

  --“Find the total number of instructors who teach a course in the Spring 2018 semester.”
 select count (distinct id) as Number_of_instructor
from teaches
where semester = ' spring' and year1 = 2018;

select min (salary) as Min_salary  from instructor
select Max (salary) as Max_salary  from instructor



--Problem (7)
-- Create a new database
CREATE DATABASE bank_database;

-- Switch to the newly created database
USE bank_database;

-- Create a table to store bank account information
CREATE TABLE bank_accounts (
    account_id INT PRIMARY KEY,
    account_holder VARCHAR(50),
    balance DECIMAL(10, 2)
);

-- Insert sample data into the table
INSERT INTO bank_accounts (account_id, account_holder, balance)
VALUES
    (1, 'John Doe', 1500.00),
    (2, 'Jane Smith', 800.00),
    (3, 'Alice Johnson', 1200.00);

-- Display the initial state of the bank_accounts table
SELECT * FROM bank_accounts;

-- Create a trigger to enforce a minimum balance requirement

-- Create a trigger in SQL Server
-- Create an AFTER UPDATE trigger in SQL Server

CREATE TRIGGER check_min_balance
ON bank_accounts
AFTER UPDATE
AS
BEGIN
    IF UPDATE(balance)  -- Check if the 'balance' column was updated
    BEGIN
        IF (SELECT MIN(balance) FROM deleted) < 1000.00
        BEGIN
            THROW 50000, 'Minimum balance requirement not met', 1;
        END
    END
END;






-- Attempt to update an account balance that violates the minimum balance requirement
-- This update should be blocked by the trigger
UPDATE bank_accounts
SET balance = 800.00
WHERE account_id = 2;

-- Attempt to update an account balance that meets the minimum balance requirement
-- This update should be allowed by the trigger
UPDATE bank_accounts
SET balance = 1700.00
WHERE account_id = 3;

-- Display the updated state of the bank_accounts table
SELECT * FROM bank_accounts; 

-- Clean up by dropping the database (be cautious in a real environment)
-- DROP DATABASE bank_database;                 






