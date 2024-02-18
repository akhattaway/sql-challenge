--List each employee in the Sales and Development departments, including their 
--employee number, last name, first name, and department name
Select de.emp_no, de.dept_no, e.first_name, e.last_name, d.dept_name, d.dept_no, e.emp_no
From dept_emp de, employees e, departments d
Where de.emp_no = e.emp_no
	And de.dept_no = d.dept_no
    And d.dept_name in ('Sales','Development');
	
	

