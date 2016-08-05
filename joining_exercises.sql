SELECT departments.dept_name, employees.first_name, employees.last_name FROM departments 
JOIN dept_manager 
	ON departments.dept_no = dept_manager.dept_no
	
JOIN employees 
	ON dept_manager.emp_no = employees.emp_no
	
WHERE dept_manager.to_date = '9999-01-01';


SELECT departments.dept_name, employees.first_name, employees.last_name FROM departments 
JOIN dept_manager 
	ON departments.dept_no = dept_manager.dept_no
	
JOIN employees 
	ON dept_manager.emp_no = employees.emp_no
	
WHERE dept_manager.to_date = '9999-01-01' AND employees.gender = 'F';


SELECT 
    t.title,
    COUNT(*)
FROM titles t
    JOIN dept_emp de on t.emp_no = de.emp_no
    JOIN departments d on de.dept_no = d.dept_no
WHERE d.dept_name = 'Customer Service'
    AND t.to_date = '9999-01-01'
    AND de.to_date = '9999-01-01'
GROUP BY t.title

SELECT
    d.dept_name, 
    CONCAT(e.first_name, ' ', e.`last_name`) as 'Name',
    s.salary as 'Salary'
FROM 
    departments d 
JOIN dept_manager dm on d.dept_no = dm.dept_no
JOIN employees e on dm.emp_no = e.emp_no
JOIN salaries s on e.emp_no = s.emp_no
WHERE s.to_date = '9999-01-01'
    AND dm.to_date = '9999-01-01'
	



