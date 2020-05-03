--- Data Analysis
--- 1. List the following details of each employee: 
--- employee number, last name, first name, sex, and salary.
---
Select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employee as e
INNER JOIN salaries as s
ON e.emp_no = s.emp_no;


--- 2. List first name, last name, and hire date for employees who were hired in 1986.
Select e.first_name, e.last_name, e.hire_date
from employee as e
where extract(year from e.hire_date) =1986;


--- 3. List the manager of each department with the following information: 
--- department number, department name, the manager's employee number, last name, first name.
Select d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, e.emp_title_id --*/ts.emp_title_id*/
From employee as e
INNER JOIN dept_manager as dm
on e.emp_no = dm.emp_no
INNER JOIN departments as d
on dm.dept_no = d.dept_no;
--INNER JOIN titles as ts
--on e.emp_title_id = ts.emp_title_id
--WHERE ts.emp_title_id LIKE 'm0001%';


--- 4. List the department of each employee with the following information: 
--- employee number, last name, first name, and department name.
Select de.emp_no, e.last_name, e.first_name, d.dept_name
From dept_emp as de
INNER JOIN employee as e
on e.emp_no = de.emp_no
INNER JOIN departments as d
on d.dept_no = de.dept_no;


--- 5. List first name, last name, and sex for employees whose first name is "Hercules" 
--- and last names begin with "B."
Select * FROM employee
WHERE first_name ='Hercules' AND last_name LIKE 'B%';


--- 6. List all employees in the Sales department, 
--- including their employee number, last name, first name, and department name.
Select de.emp_no, e.last_name, e.first_name, d.dept_name
From dept_emp as de
INNER JOIN employee as e
on e.emp_no = de.emp_no
INNER JOIN departments as d
on d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales';


--- 7. List all employees in the Sales and Development departments, 
--- including their employee number, last name, first name, and department name.
Select de.emp_no, e.last_name, e.first_name, d.dept_name
From dept_emp as de
INNER JOIN employee as e
on e.emp_no = de.emp_no
INNER JOIN departments as d
on d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';


--- 8. In descending order, list the frequency count of employee last names, i.e., 
--- how many employees share each last name.
Select last_name, count(last_name) as frequent_last_name_count
FROM employee
Group By last_name
Order By frequent_last_name_count desc;


--- Epilogue
--- Evidence in hand, you march into your boss's office and present the visualization. 
--- With a sly grin, your boss thanks you for your work. On your way out of the office, 
--- you hear the words, "Search your ID number." You look down at your badge to see that 
--- your employee ID number is 499942.

Select e.emp_no, e.last_name, e.first_name
FROM employee as e
WHERE e.emp_no = 499942


