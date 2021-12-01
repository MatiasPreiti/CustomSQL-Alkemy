--- 30-11-2021 19:41:02
--- SQLite
DROP TABLE demo;

--- 30-11-2021 19:44:14
--- SQLite
CREATE TABLE course (
 
 code INT NOT NULL,

 name VARCHAR(45) NOT NULL,

 description VARCHAR(45),

 turn VARCHAR(45) NOT NULL,
 PRIMARY KEY(code)
);

--- 30-11-2021 19:46:01
--- SQLite
ALTER TABLE course ADD place INT NOT NULL;

--- 30-11-2021 19:48:49
--- SQLite
/***** ERROR ******
near "y": syntax error
 ----- 
INSERT INTO course (code, name, description, turn, place) VALUES (101, “Algoritmos”,”Algoritmos y Estructuras de Datos”,”Mañana”,35);
*****/

--- 30-11-2021 19:51:49
--- SQLite
INSERT INTO course (code, name, description, turn, place) VALUES (101, 'Algoritmos','Algoritmos y Estructuras de Datos','Mañana',35);

--- 30-11-2021 19:53:51
--- SQLite
INSERT INTO course (code, name, description, turn, place) VALUES (102, 'Matemática Discreta','','Tarde',30);

--- 30-11-2021 19:54:11
--- SQLite
INSERT INTO course (code, name, description, turn, place) VALUES (103, '','Descripcion ramdom','Tarde',30);

--- 30-11-2021 19:54:30
--- SQLite
SELECT * FROM course;

--- 30-11-2021 19:55:18
--- SQLite
/***** ERROR ******
NOT NULL constraint failed: course.name
 ----- 
INSERT INTO course (code, description, turn, place) VALUES (103, 'Descripcion ramdom','Tarde',30);
*****/

--- 30-11-2021 19:55:47
--- SQLite
/***** ERROR ******
UNIQUE constraint failed: course.code
 ----- 
INSERT INTO course (code, name, description, turn, place) VALUES (102, 'Cursa3','Descripcion ramdom','Tarde',30);
*****/

--- 30-11-2021 19:57:54
--- SQLite
UPDATE course SET place = 25;

--- 30-11-2021 19:58:02
--- SQLite
SELECT * FROM course;

--- 30-11-2021 20:00:45
--- SQLite
DELETE FROM course WHERE name = 'Algoritmos';

