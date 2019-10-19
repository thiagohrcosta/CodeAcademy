/* CREATING NEW TABLE */

CREATE TABLE friends (
id INTEGER,
name TEXT,
birthday DATE);

/* INSERT DATA INTO TABLE */

INSERT INTO friends (id, name, birthday)
VALUES(1,'Jane','05-30-1990');

INSERT INTO friends (id, name, birthday)
VALUES(2, 'Joe Montana', '01-10-1985');

INSERT INTO friends (id, name, birthday)
VALUES(3, 'Phillip Rivers', '01-09-1980');

INSERT INTO friends (id, name, birthday)
VALUES (4, 'Peyton', '04-07-1991');

/* UPDATE DATA */ 

UPDATE friends
SET name = "Jane Doe Smith"
WHERE name = 'Jane';

UPDATE friends
SET name = "Peyton Manning"
WHERE name = 'Peyton';

/* ADD THE EMAIL COLUMN ON TABLE */

ALTER TABLE friends
ADD email varchar(100);

/* UPDATE THE EMAIL FIELD */

UPDATE friends 
SET email = "peytonmanning@broncos.com"
WHERE name = 'Peyton Manning';

UPDATE friends
SET email = "jane@codeacademy.com"
WHERE name = 'Jane Doe Smith';

UPDATE friends 
SET email = "joelmontana@dolphins.com"
WHERE name = 'Joe Montana';

UPDATE friends
SET email = "philliprivers@charges.com"
WHERE name = 'Phillip Rivers';

/* JANE DOE ISN´T A REAL PERSON - DELETE HER */

DELETE from friends
WHERE name = 'Jane Doe Smith';

/* TESTING IF EVERYTHING IS OK */
SELECT * FROM friends;
