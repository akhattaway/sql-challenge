--List each employee in the Sales department, including their 
--employee number, last name, and first name
Select de.emp_no, de.dept_no, e.first_name, e.last_name, d.dept_name, d.dept_no, e.emp_no
From dept_emp de, employees e, departments d
Where de.emp_no = e.emp_no
	And de.dept_no = d.dept_no
    And d.dept_name = 'Sales';
