-- List the manager of each department along with their department number, 
-- department name, employee number, last name, and first name
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager dm, departments d, employees e
WHERE dm.dept_no = d.dept_no
  AND dm.emp_no = e.emp_no;

