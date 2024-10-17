CREATE Table students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country) VALUES
('Gandib', 'Roy', 22, 'A', 'Bangla', 'gandib@gmail.com', '1996-09-27', 'O+', 'Nepal'),
('Surjasen', 'Roy', 24, 'A+', 'Physics', 'surja@gmail.com', '1994-09-26', 'O+', 'USA');

-- SELECT email as "Student Email" from students;
-- SELECT * from students ORDER BY first_name DESC;
-- SELECT * from students ORDER BY dob ASC;
-- SELECT DISTINCT country from students;
-- SELECT * from students WHERE country = 'USA';
-- SELECT * from students WHERE grade = 'A' and course = 'Bangla';
-- SELECT * from students WHERE grade = 'A' and course = 'Bangla';
-- SELECT * from students WHERE country = 'Nepal' OR country = 'Bangladesh';
-- SELECT * from students WHERE (country = 'Nepal' OR country = 'Bangladesh') AND age = 22;
-- SELECT * from students WHERE (country = 'Nepal' OR country = 'Bangladesh') AND age > 22;
-- SELECT lower(first_name) FROM students;
-- SELECT concat(first_name, ' ', last_name) FROM students;
-- SELECT length(first_name) FROM students;
-- SELECT avg(age) FROM students;
-- SELECT count(*) FROM students;
-- SELECT max(length(first_name)) FROM students;
-- SELECT * FROM students WHERE NOT country = 'Nepal';
-- SELECT * FROM students WHERE email is NOT NULL;
-- SELECT COALESCE(email, 'Not Provided') as "email" FROM students;
-- SELECT COALESCE(email, 'Not Provided') as "email", blood_group FROM students;
-- SELECT * FROM students WHERE country = 'USA' or country = 'Nepal';
-- SELECT * FROM students WHERE country in('USA', 'Nepal');
-- SELECT * FROM students WHERE country NOT in('USA', 'Nepal');
-- SELECT * FROM students WHERE age BETWEEN 19 and 23;
-- SELECT * FROM students WHERE dob BETWEEN '1994-01-01' and '1996-01-01' ORDER BY dob;
-- SELECT * FROM students WHERE first_name LIKE '%b';
-- SELECT * FROM students WHERE first_name LIKE 'G%';
-- SELECT * FROM students WHERE first_name LIKE 'G%';
-- SELECT * FROM students WHERE first_name ILIKE 'g%';
-- SELECT * FROM students LIMIT 5;
-- SELECT * FROM students LIMIT 5 OFFSET 2;
-- SELECT * FROM students LIMIT 2 OFFSET 2*0;
-- SELECT * FROM students LIMIT 2 OFFSET 2*1;
-- DELETE FROM students WHERE grade = 'A';
SELECT * FROM students;
-- UPDATE students set email = NULL WHERE student_id = 10; 
-- UPDATE students set email = 'email@gmail.com' WHERE student_id = 10; 
UPDATE students set email = 'email@gmail.com' WHERE student_id = 10; 