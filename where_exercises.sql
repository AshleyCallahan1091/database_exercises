-- SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT * FROM employees WHERE first_name OR ('Irena', 'Vidya', 'Maya') AND gender = 'M';

-- SELECT emp_no, first_name, last_name FROM employees WHERE (last_name LIKE 'E%');
SELECT emp_no, first_name, last_name FROM employees WHERE (last_name LIKE 'E%') OR (last_name LIKE '%E');
SELECT emp_no, first_name, last_name FROM employees WHERE (last_name LIKE 'E%') AND (last_name LIKE '%E');

SELECT * FROM employees WHERE (hire_date BETWEEN '1990-01-01' AND '1999-12-31') AND birth_date LIKE '%12-25%';

-- SELECT * FROM employees WHERE birth_date LIKE '%12-25%';

SELECT last_name FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';