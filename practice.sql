CREATE Table employees(
emp_id SERIAL PRIMARY KEY,
emp_name VARCHAR(50),
emp_salary INTEGER,
dept_id INTEGER REFERENCES departments(dept_id)
);
CREATE Table departments(
dept_id INTEGER PRIMARY KEY,
dept_name VARCHAR(50)
);
INSERT INTO employees VALUES
(1,'John Doe', 12000, 101),
(2,'John Smith', 14000, 101),
(3,'Jane Smith', 11000, 103),
(4,'Joseph Smith', 10000, 102),
(5,'Shakes Speare', 17000, 102),
(6,'Robert J', 15000, 103);
INSERT INTO departments VALUES
(101, 'Human Resource'),
(102, 'HR'),
(103, 'Marketing');
DROP Table employees;
DROP Table departments;
INSERT INTO employees VALUES
(1, 'John Doe', 101),
(2, 'Jane Smith', 102);
INSERT INTO departments VALUES
(101, 'Human Resource'),
(102, 'Marketing');
SELECT * from employees;
SELECT * from departments;
SELECT * from employees JOIN departments USING(dept_id);
SELECT dept_name, round(avg(emp_salary)) as avg_salary from employees JOIN departments USING(dept_id) GROUP BY dept_name;
SELECT dept_name, count(*) from employees JOIN departments USING(dept_id) GROUP BY dept_name;