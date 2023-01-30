/* Create table about the people and what they do here */
CREATE TABLE singers (id INTEGER PRIMARY KEY AUTOINCREMENT,
                        name TEXT);
CREATE TABLE songs (id INTEGER PRIMARY KEY AUTOINCREMENT,
                        name TEXT,
                        singer_id INTEGER);
CREATE TABLE nationalities (id INTEGER PRIMARY KEY AUTOINCREMENT,
                            name TEXT,
                            singer_id INTEGER);
                            
INSERT INTO singers (name) VALUES ("Freddie Mercury");
INSERT INTO singers (name) VALUES ("Andre Hazes");
INSERT INTO singers (name) VALUES ("Adele");
INSERT INTO singers (name) VALUES ("Paul De Leeuw");
INSERT INTO singers (name) VALUES ("Daan");
INSERT INTO singers (name) VALUES ("John Lennon");
INSERT INTO singers (name) VALUES ("Regi");

INSERT INTO songs (name, singer_id) VALUES ("Bohemian Rhapsody", 1);
INSERT INTO songs (name, singer_id) VALUES ("We Are The Champions", 1);
INSERT INTO songs (name, singer_id) VALUES ("De Vlieger", 2);
INSERT INTO songs (name, singer_id) VALUES ("Rolling In The Deep", 3);
INSERT INTO songs (name, singer_id) VALUES ("De Regenboog", 4);
INSERT INTO songs (name, singer_id) VALUES ("Housewives", 5);
INSERT INTO songs (name, singer_id) VALUES ("Victory", 5);
INSERT INTO songs (name, singer_id) VALUES ("Imagine", 6);
INSERT INTO songs (name, singer_id) VALUES ("Ellie", 7);
INSERT INTO songs (name, singer_id) VALUES ("Walk On Water", 6);
INSERT INTO songs (name, singer_id) VALUES ("Kom Wat Dichterbij", 6);

INSERT INTO nationalities (name, singer_id) VALUES ("British", 1);
INSERT INTO nationalities (name, singer_id) VALUES ("British", 3);
INSERT INTO nationalities (name, singer_id) VALUES ("British", 6);
INSERT INTO nationalities (name, singer_id) VALUES ("Dutch", 2);
INSERT INTO nationalities (name, singer_id) VALUES ("Dutch", 4);
INSERT INTO nationalities (name, singer_id) VALUES ("Belgian", 5);
INSERT INTO nationalities (name, singer_id) VALUES ("Belgian", 7);

/* List each song with their artist */
SELECT singers.name, songs.name
    FROM singers
    JOIN songs
    ON singers.id = songs.singer_id;

/* Count songs per singer */
SELECT singers.name, COUNT(*) AS number_of_songs
    FROM songs
    JOIN singers
    ON singers.id = songs.singer_id
    GROUP BY singers.name;

/* Count how many artists have which nationality */
SELECT name, COUNT(*) AS number_of_artists FROM nationalities GROUP BY name;