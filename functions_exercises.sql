SELECT gender, COUNT(*) FROM employees 
WHERE (first_name='Irena' OR first_name='Vidya' OR first_name='Maya') 
AND gender 
GROUP BY gender;

SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM employees 
WHERE last_name LIKE '%e' 
ORDER BY emp_no;

SELECT DATEDIFF(now(), hire_date) AS DiffDate FROM employees 
WHERE birth_date LIKE '%-12-25' AND hire_date LIKE '199%' 
ORDER BY birth_date ASC, hire_date DESC;
 
SELECT last_name, COUNT(*) FROM employees 
WHERE last_name LIKE '%q%' AND (last_name NOT LIKE '%qu%') 
GROUP BY last_name ORDER BY last_name;