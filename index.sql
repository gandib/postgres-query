SELECT * FROM employees;
EXPLAIN ANALYSE
SELECT * FROM employees WHERE emp_name='John Doe';
CREATE INDEX idx_employees_emp_name
ON employees (emp_name);


