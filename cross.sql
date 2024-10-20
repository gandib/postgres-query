CREATE Table employees(
emp_id INT,
emp_name VARCHAR(50),
dept_id INT
);
CREATE Table departments(
dept_id INT,
dept_name VARCHAR(50)
);
INSERT INTO employees VALUES
(15, 'Gandib', 102);
INSERT INTO departments VALUES
(101, 'Human Resource'),
(102, 'Marketing');
SELECT * from employees;
SELECT * from departments;
SELECT * from employees CROSS JOIN departments;
SELECT * from employees NATURAL JOIN departments;
