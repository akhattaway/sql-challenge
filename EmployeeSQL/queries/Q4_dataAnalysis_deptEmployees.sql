--List the department number for each employee along with that 
--employee’s employee number, last name, first name, and department name
select de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp de, employees e, departments d
WHERE de.dept_no = d.dept_no
  AND de.emp_no = e.emp_no; 