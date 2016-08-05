SELECT first_name, last_name, hire_date, emp_no
FROM employees
WHERE hire_date IN 
	(SELECT hire_date 
	FROM employees
	WHERE emp_no = 101010);


SELECT title 

FROM titles
WHERE emp_no IN 
	(SELECT emp_no 
	FROM employees
	WHERE first_name = 'Aamod'
	);


SELECT first_name, last_name, gender
FROM employees
WHERE emp_no IN (
	SELECT emp_no 
	FROM dept_manager
	WHERE gender = 'F' );




Historic avg emp

SELECT employees.gender, AVG(salaries.salary)
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no
GROUP BY employees.gender;

Current avg emp

SELECT employees.gender, AVG(salaries.salary)
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE salaries.to_date = '9999-01-01'
GROUP BY employees.gender;

Historic avg manager

SELECT employees.gender, AVG(salaries.salary)
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE employees.emp_no IN (
	SELECT emp_no 
	FROM dept_manager
	)

GROUP BY employees.gender;

Current avg manager

SELECT employees.gender, AVG(salaries.salary)
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE employees.emp_no IN (
	SELECT emp_no 
	FROM dept_manager
	WHERE to_date = '9999-01-01')

GROUP BY employees.gender;

