-- STEP 1: Drop tables if they exist:
drop table departments;
drop table dept_emp;
drop table dept_manager;
drop table employees;
drop table salaries;
drop table titles;


-- STEP 2: Create empty tables to hold information from .csv files:
--- departments:
create table departments(
	dept_no varchar(50) not null,
	dept_name varchar(50) not null,
	primary key (dept_no));

--- titles:
CREATE TABLE titles(
	title_id varchar(50),
	title varchar(50) not null,
	primary key (title_id));
	
--- employees:
create table employees(
	emp_no int primary key,
	emp_title_id varchar(50) not null,
	birth_date varchar(50) not null,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	sex varchar(50) not null,
	hire_date varchar not null,
	foreign key (emp_title_id) references titles(title_id));

--- dept_emp:
create table dept_emp(
	emp_no int not null,
	dept_no varchar(50) not null,
	primary key (emp_no, dept_no),
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no));

--- dept_manager:
create table dept_manager(
	dept_no varchar(50) not null,
	emp_no int not null,
	primary key (dept_no, emp_no),
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no));

--- salaries:
CREATE TABLE salaries(
	emp_no int primary key,
	salary int not null,
	foreign key (emp_no) references employees(emp_no));


-- STEP 3: import .csv files into these empty tables:
--- You will need to import .csv files in the same order as the table creation above due to the dependencies


-- STEP 4: View contents to ensure import has succeeded:
select * from departments;
select * from dept_emp;
select * from dept_manager;
select * from employees;
select * from salaries;
select * from titles;
