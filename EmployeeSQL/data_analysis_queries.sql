-- DATA ANALYSIS:
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