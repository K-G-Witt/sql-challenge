-- STEP 2: create empty tables to hold information from .csv files:
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


-- STEP 3: import .csv files into these empty tables:
--- View contents to ensure import has succeeded
SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;


-- STEP 4: data analysis
--- 1. List the employee number, last name, first name, sex, and salary of each employee:
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e 
JOIN salaries AS s ON e.emp_no = s.emp_no;

--- 2. List the first name, last name, and hire date for the employees who were hired in 1986:
SELECT e.first_name, e.last_name, e.hire_date
FROM employees AS e
WHERE e.hire_date LIKE '%1986';

--- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name:
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager AS dm
JOIN departments AS d ON dm.dept_no = d.dept_no
JOIN employees AS e ON dm.emp_no = e.emp_no;

--- 4. List the department number for each employee along with that employee's number, last name, first name, and department name:
SELECT de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no;