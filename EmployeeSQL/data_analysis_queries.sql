-- DATA ANALYSIS:
--- 1. List the employee number, last name, first name, sex, and salary of each employee:
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e 
join salaries as s on e.emp_no = s.emp_no;

--- 2. List the first name, last name, and hire date for the employees who were hired in 1986:
select e.first_name, e.last_name, e.hire_date
from employees as e
where e.hire_date like '%1986';

--- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name:
select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from dept_manager as dm
join departments as d on dm.dept_no = d.dept_no
join employees as e on dm.emp_no = e.emp_no;

--- 4. List the department number for each employee along with that employee's number, last name, first name, and department name:
select de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
join dept_emp as de on e.emp_no = de.emp_no
join departments as d on de.dept_no = d.dept_no;

--- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name beging with the letter B:
select e.first_name, e.last_name, e.sex
from employees as e
where e.first_name = 'Hercules' and e.last_name like 'B%';

--- 6. List each employee in the Sales Department, including their employee number, last name, and first name:
---- 6a. Ascertain the Sales Department dept_no (d007):
select * from departments;

---- 6b. Main analysis code:
select e.emp_no, e.last_name, e.first_name
from employees as e
join dept_emp on e.emp_no = dept_emp.emp_no
join departments on dept_emp.dept_no = departments.dept_no
where departments.dept_no = 'd007';

--- 7. List each employee in the Sales and Development Departments, including their employee number, last name, first name, and department name:
---- 7a. Ascertain the Development Department dept_on (d005):
select * from departments;

---- 7b. Main analysis code:
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
join dept_emp  as de on e.emp_no = de.emp_no
join departments as d on de.dept_no = d.dept_no
where d.dept_no = 'd005' or d.dept_no = 'd007';

--- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name):
select e.last_name, count(e.last_name) as "Count"
from employees as e
group by e.last_name
order by "Count" desc;


