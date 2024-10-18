CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
);
SELECT * from "user";
CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
);
CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) NOT NULL
);
CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) on delete CASCADE
);
CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) on delete set NULL
);
CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) on delete set DEFAULT DEFAULT 2
);
ALTER TABLE post alter COLUMN user_id set NOT NULL;
SELECT * from post;
INSERT INTO "user" (username) VALUES
('Akash'),
('Batas'),
('Sagor'),
('Nodi');
INSERT INTO post (title, user_id) VALUES
('Enjoying a sunny day!', 2),
('Batas just shared an amazing recipe!', 1),
('Enjoying adventure with sagor!', 4),
('Enjoying with Akash!', 4);
SELECT title from post WHERE user_id = 1;
DELETE FROM "user" WHERE id = 4;
DROP Table "user";
