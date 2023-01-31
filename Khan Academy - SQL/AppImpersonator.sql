CREATE TABLE users (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT);
CREATE TABLE posts (id INTEGER PRIMARY KEY AUTOINCREMENT, user_id INTEGER, title TEXT, content TEXT);

INSERT INTO users (name) VALUES ("JoskeVermeulen");
INSERT INTO users (name) VALUES ("DikkeLu");
INSERT INTO users (name) VALUES ("FernandG");
INSERT INTO users (name) VALUES ("HodgePodge");

INSERT INTO posts (user_id, title, content) VALUES (1, "Strange phonecall", "Received a phonecall for my father yesterday. Person on the other line would not listen to me...");
INSERT INTO posts (user_id, title, content) VALUES (2, "Oops, I did it again", "Apparantly, she had a boyfriend.");
INSERT INTO posts (user_id, title, content) VALUES (2, "French Fries", "Does anyone know the best place to get french fries in BRU?");
INSERT INTO posts (user_id, title, content) VALUES (3, "New neighbours", "My new neighbours just moved in. Seems like a happy family.");
INSERT INTO posts (user_id, title, content) VALUES (4, "Song name?", "What the title of that song that goes: dun-dun-duuuuuun, dun-dun-dun-duuuduuuuduuuuun?");
INSERT INTO posts (user_id, title, content) VALUES (2, "Too many fries", "Have you ever eaten too many fries in one setting? Me neither!");

SELECT id, content FROM posts WHERE id = 5;

UPDATE posts SET content = "What the title of that song that goes: dun-dun-duuuuuun, dun-dun-dun-duuuduuuuduuuuun? - EDIT: NVM, found it you guys!" WHERE id = 5;

SELECT id, content FROM posts WHERE id = 5;

SELECT * FROM posts;

SELECT id, content FROM posts WHERE id = 2;
DELETE FROM posts WHERE id = 2;

SELECT * FROM posts;
