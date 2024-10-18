SELECT * from students;
SELECT country, count(*) from students GROUP BY country;
SELECT country,count(*), avg(age) from students GROUP BY country;
SELECT country, avg(age) from students GROUP BY country HAVING avg(age) > 23;
SELECT extract(year from dob) as birth_year, count(*) from students 
GROUP BY birth_year;
