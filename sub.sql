-- CREATE Table 
SELECT * FROM departments;
SELECT * FROM employees;
SELECT max(emp_salary) FROM employees WHERE dept_id = 102;

SELECT * FROM employees WHERE emp_salary > (SELECT max(emp_salary) FROM employees WHERE dept_id = 102) ORDER BY emp_salary DESC;
SELECT *, (SELECT sum(emp_salary) FROM employees) FROM employees;
SELECT * FROM (SELECT dept_id, sum(emp_salary) FROM employees GROUP BY dept_id) as sum_dept_id;
SELECT emp_name, emp_salary, dept_id from employees WHERE emp_name IN (SELECT emp_name from employees WHERE emp_name LIKE '%j%'); 

