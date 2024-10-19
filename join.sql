SELECT * from "user";
SELECT * from post;
SELECT title, username from post JOIN "user" on post.user_id = "user".id;
SELECT title, username from post as p JOIN "user" as u on p.user_id = u.id;
SELECT title, username from post as p LEFT JOIN "user" as u on p.user_id = u.id;
SELECT title, username from post as p RIGHT JOIN "user" as u on p.user_id = u.id;
SELECT * from post as p FULL JOIN "user" as u on p.user_id = u.id;

SELECT * from employees JOIN departments using(dept_id);
