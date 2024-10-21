SELECT * FROM employees;
CREATE View dept_avg_salary AS SELECT dept_id, avg(emp_salary) from employees GROUP BY dept_id;
SELECT * FROM dept_avg_salary;
