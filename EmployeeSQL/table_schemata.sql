-- STEP 1: create empty tables to hold information from .csv files:
--- departments:
CREATE TABLE departments(
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR);

--- dept_emp:
CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	PRIMARY KEY (emp_no, dept_no));

--- dept_manager:
CREATE TABLE dept_manager(
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY (dept_no, emp_no));

--- employees:
CREATE TABLE employees(
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR NOT NULL,
	birth_date VARCHAR NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date VARCHAR NOT NULL);

--- salaries:
CREATE TABLE salaries(
	emp_no INT PRIMARY KEY,
	salary INT NOT NULL);

--- titles:
CREATE TABLE titles(
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR NOT NULL);


-- STEP 2: import .csv files into these empty tables:
--- View contents to ensure import has succeeded
SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;
