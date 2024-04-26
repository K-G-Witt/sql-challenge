# sql-challenge
Data on employees for the Pewlett Hackard company employed between the 1980s and 1990s was queried to uncover insights into hiring practices during those decades.

## Project Description:
In the subfolder titled **Starter_Code/data**, six separate .csv files are provided which are all that remain of the Pewlett Hackard's company records from the 1980s and 1990s:
1. **departments:** contains employment information on department numbers and names;
2. **dept_emp:** contains employment information on employee numbers and department numbers for all employees;
3. **dept_manager:** contains employment information on employee numbers and department numbers for managers only;
4. **employees:** contains personal information on employee numbers, titles, birth dates, first names, last names, sex, and hire dates for all employees;
5. **salaries:** contains employment information on employee numbers and salaries;
6. **titles:** contains employment information on title numbers and titles.


## Installation and Run Instructions:
### Data Modelling:
An Entity Relationship Diagram (ERD) representing the structure and relationship between the six data tables is provided with the **EmployeeSQL** subfolder within the **emplpoyees_sql_erd.png** file.

### Data Engineering:
Within the **EmployeeSQL** subfolder, executing the **table_schemata.sql** script  will create and load each of these six .csv files into PGAdmin in preparation for the main analysis.


## Usage Instructions:
### Data Analysis:
Following installation, executing the **data_analysis_queries** script will output the following information:
1. Employee number, last name, first name, sex, and salary of each employee.
2. First name, last name, and hire date for employees hired in 1986.
3. Department number, department name, employeee number, last name, and first name for each departmental manager.
4. Department number, employee's employment name, last name, first name, and department name.
5. First name, last name, and sex for each employee whose first name is Hercules and whose last name begins with a B.
6. Employee number, last name, and first name of all employees employed in the Sales Department.
7. Employee number, last name, and first name of all employees employed in either the Sales or Development Departments.
8. Frequency of each last name, in descending order.

Outputs for all of these queries are saved, as .csv files, within the subfolder titled **Data Analysis Exhibits**.


## Credits:
This code was compiled and written by me for the sql-challenge class homework in the 2024 Data Analytics Boot Camp hosted by Monash University. Additional credits are declared below:

**Additional information on Primary Key constraints and their usage:**
 https://www.w3schools.com/sql/sql_primarykey.asp#gsc.tab=0 (accessed 26 April 2024).

**Assigning Foreign Keys where a table has already been created using References argumemnt:**
https://www.w3schools.com/sql/sql_foreignkey.asp (accessed 26 April 2024).



