-- DATA ANALYSIS
-- Find employee number, last name, first name, gender, and salary
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees e
INNER JOIN salaries s
ON e.emp_no = s.emp_no
ORDER BY emp_no ASC

-- Find employees hired in 1986
SELECT * 
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'
ORDER BY hire_date ASC

-- Find manager of each dept with dept number, dept name, employee number, last name, 
-- first name, and start/end employment date
SELECT d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name, m.from_date, m.to_date
FROM departments d
INNER JOIN dept_manager m
ON d.dept_no = m.dept_no
INNER JOIN employees e
ON m.emp_no = e.emp_no
ORDER BY dept_no ASC

-- List the department of each employee with employee number, last name, first name, dpt name
SELECT a.emp_no, b.last_name, b.first_name, c.dept_name
FROM dept_emp a
INNER JOIN employees b
ON a.emp_no = b.emp_no
INNER JOIN departments c
ON a.dept_no = c.dept_no
ORDER BY emp_no ASC

-- List employees whose first name is 'hercules' and last names begin with 'b'
SELECT first_name, last_name
FROM employees
WHERE first_name = 'Hercules' and last_name LIKE 'B%'

-- List Sales employees, including emp_no, last name, first name, dept name
SELECT a.emp_no, b.last_name, b.first_name, c.dept_name
FROM dept_emp a
INNER JOIN employees b
ON a.emp_no = b.emp_no
INNER JOIN departments c
ON a.dept_no = c.dept_no
WHERE dept_name = 'Sales'
ORDER BY emp_no ASC

-- List Sales & Development depts, including emp_no, last_name, first_name, dept name
SELECT a.emp_no, b.last_name, b.first_name, c.dept_name
FROM dept_emp a
INNER JOIN employees b
ON a.emp_no = b.emp_no
INNER JOIN departments c
ON a.dept_no = c.dept_no
WHERE dept_name IN ('Sales','Development')
ORDER BY emp_no ASC

-- Frequency of employees with same name
SELECT last_name, COUNT(last_name) as "Frequency"
FROM employees
GROUP BY last_name
ORDER BY "Frequency" DESC