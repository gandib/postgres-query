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
SELECT dept_name, round(avg(emp_salary)) as avg_salary from employees JOIN departments USING(dept_id) GROUP BY dept_name ORDER BY avg_salary desc LIMIT 1;
INSERT INTO employees VALUES
(15,'Gandib', 22000, 101),
(16,'Surjasen', 19000, 103);

CREATE Table orders(
    order_id SERIAL  PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2)
);
INSERT into orders (customer_id, order_date, total_amount) VALUES
(1,'2022-05-01', 100.50),
(2,'2020-01-07', 200.75),
(1,'2022-01-08', 150.25),
(3,'2020-05-10', 300.00),
(2,'2022-01-15', 180.50),
(3,'2022-01-20', 220.25),
(1,'2022-01-25', 90.00),
(2,'2022-01-28', 120.75),
(3,'2021-02-01', 250.50),
(1,'2022-02-05', 180.25);

SELECT * from orders;
SELECT customer_id, count(customer_id), sum(total_amount) FROM orders GROUP BY customer_id HAVING count(customer_id) >2;
SELECT extract(month from order_date) as month, count(order_date), sum(total_amount) FROM orders WHERE extract(year from order_date)=2022 GROUP BY month;
