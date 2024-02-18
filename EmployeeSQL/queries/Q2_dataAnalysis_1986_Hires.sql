--List the first name, last name, and hire date for the employees 
--who were hired in 1986 (2 points)
select * from employees
SELECT e.emp_no, e.last_name, e.first_name, e.hire_date
FROM employees e
WHERE EXTRACT(YEAR FROM hire_date) = 1986;
