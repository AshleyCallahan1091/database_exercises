-- SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');
-- SELECT emp_no, first_name, last_name FROM employees WHERE (last_name LIKE 'E%');
-- SELECT * FROM employees WHERE birth_date LIKE '%12-25%';


SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') AND gender = 'M' ORDER BY first_name DESC;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') AND gender = 'M' ORDER BY first_name DESC, last_name ASC;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') AND gender = 'M' ORDER BY last_name DESC, first_name ASC;

-- SELECT * FROM employees WHERE (last_name LIKE 'E%') OR (last_name LIKE '%E');
SELECT * FROM employees WHERE (last_name LIKE 'E%') OR (last_name LIKE '%E') ORDER BY emp_no DESC;

-- SELECT emp_no, first_name, last_name FROM employees WHERE (last_name LIKE 'E%') AND (last_name LIKE '%E');
-- SELECT * FROM employees WHERE (hire_date BETWEEN '1990-01-01' AND '1999-12-31') AND birth_date LIKE '%12-25%';
-- SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name <> '%qu%';

SELECT * FROM employees WHERE (hire_date BETWEEN '1990-01-01' AND '1999-12-31') AND birth_date LIKE '%12-25%' ORDER BY birth_date ASC, hire_date DESC;