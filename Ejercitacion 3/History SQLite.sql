--- 30-11-2021 19:41:02
--- SQLite
DROP TABLE demo;

--- 30-11-2021 19:44:09
--- SQLite
/***** ERROR ******
no such column: codigo
 ----- 
CREATE TABLE course (
 
 code INT NOT NULL,

 name VARCHAR(45) NOT NULL,

 description VARCHAR(45),

 turn VARCHAR(45) NOT NULL,
 PRIMARY KEY(codigo)
);
*****/

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

--- 30-11-2021 19:49:22
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

--- 30-11-2021 19:59:20
--- SQLite
/***** ERROR ******
no such column: Algoritmos
 ----- 
DELETE FROM course WHERE name = Algoritmos;
*****/

--- 30-11-2021 20:00:45
--- SQLite
DELETE FROM course WHERE name = 'Algoritmos';

--- 30-11-2021 20:25:58
--- SQLite
/***** ERROR ******
table course already exists
 ----- 
-- TABLE
CREATE TABLE course (
 
 code INT NOT NULL,

 name VARCHAR(45) NOT NULL,

 description VARCHAR(45),

 turn VARCHAR(45) NOT NULL, place INT NOT NULL,
 PRIMARY KEY(code)
);
 
-- INDEX
 
-- TRIGGER
 
-- VIEW;
*****/

--- 01-12-2021 00:17:11
--- SQLite
/***** ERROR ******
no such table: profesor
 ----- 
SELECT profesor.Apellido , curso.Nombre, curso.turno

FROM profesor LEFT JOIN curso ON profesor.id = curso.PROFESOR_id;
*****/

--- 01-12-2021 00:19:12
--- SQLite
CREATE TABLE profesor (
 
 id INT NOT NULL,

 firtsName VARCHAR(45) NOT NULL,

 lastName varchar(45) NOT NULL,
  
 birthday VARCHAR(45),

 salary INT NOT NULL,
 PRIMARY KEY(id)
);

--- 01-12-2021 00:20:29
--- SQLite
INSERT INTO profesor (id, firtsname, lastname, birthday ,salary) VALUES (1, 'Carlos','Gallardo','12/12/2113',3500);

--- 01-12-2021 00:20:49
--- SQLite
INSERT INTO profesor (id, firtsname, lastname, birthday ,salary) VALUES (2, 'jose','Preiti','11/15/1213',56500);

--- 01-12-2021 00:21:00
--- SQLite
INSERT INTO profesor (id, firtsname, lastname, birthday ,salary) VALUES (3, 'josesito','lopez','11/15/1213',56500);

--- 01-12-2021 00:21:39
--- SQLite
INSERT INTO profesor (id, firtsname, lastname, birthday ,salary) VALUES (4, 'Pepe','Argento','12/01/1999',100);

--- 01-12-2021 00:21:56
--- SQLite
SELECT * FROM course;

--- 01-12-2021 00:25:01
--- SQLite
/***** ERROR ******
near ",": syntax error
 ----- 
ALTER TABLE course ADD profesor_id INT NOT NULL,
CONSTRAINT profesor FOREIGN KEY (profesor_id);
*****/

--- 01-12-2021 00:27:57
--- SQLite
/***** ERROR ******
near ",": syntax error
 ----- 
ALTER TABLE course ADD profesor_id INT NOT NULL,
        CONSTRAINT fk_profesor FOREIGN KEY (profesor_id)
        REFERENCES profesor (id);
*****/

--- 01-12-2021 00:28:08
--- SQLite
/***** ERROR ******
near "FOREIGN": syntax error
 ----- 
ALTER TABLE course ADD profesor_id INT NOT NULL
        CONSTRAINT fk_profesor FOREIGN KEY (profesor_id)
        REFERENCES profesor (id);
*****/

--- 01-12-2021 00:30:58
--- SQLite
/***** ERROR ******
near "FOREIGN": syntax error
 ----- 
ALTER TABLE course
ADD FOREIGN KEY (profesor_id) REFERENCES profesor(id);
*****/

--- 01-12-2021 00:32:35
--- SQLite
/***** ERROR ******
near "CONSTRAINT": syntax error
 ----- 
ALTER TABLE courseADD CONSTRAINT FK_ProfesorCourse
ADD FOREIGN KEY (profesor_id) REFERENCES profesor(id);
*****/

--- 01-12-2021 00:32:42
--- SQLite
/***** ERROR ******
near "CONSTRAINT": syntax error
 ----- 
ALTER TABLE course ADD CONSTRAINT FK_ProfesorCourse
ADD FOREIGN KEY (profesor_id) REFERENCES profesor(id);
*****/

--- 01-12-2021 00:32:45
--- SQLite
/***** ERROR ******
near "CONSTRAINT": syntax error
 ----- 
ALTER TABLE course CONSTRAINT FK_ProfesorCourse
ADD FOREIGN KEY (profesor_id) REFERENCES profesor(id);
*****/

--- 01-12-2021 00:33:07
--- SQLite
DROP TABLE course;

--- 01-12-2021 00:35:53
--- SQLite
CREATE TABLE curso (
    codigo int NOT NULL,
    nombre varchar(45) NOT NULL,
  	descripcion varchar(45),
  	turno varchar(45) not NULL, 
    PROFESOR_ID int,
    PRIMARY KEY (codigo),
    FOREIGN KEY (PROFESOR_ID) REFERENCES profesor(id)
);

--- 01-12-2021 00:39:44
--- SQLite
/***** ERROR ******
near "VALUES": syntax error
 ----- 
INSERT INTO curso (id, nombre, descripcion, turno, profesor_id)
VALUES (1, 'Alkemy', 'Curso de Alkemy', 'Mañana', 1),
VALUES (2, 'NodeJS', 'Curso de Node', 'Mañana', 2),
VALUES (3, 'Typescript', 'Curso de Typescript', 'tarde', 1),
VALUES (4, 'Danza', 'Aprendiendo los pasos de piñon fijo', 'Mañana', 3),
VALUES (5, 'AWS', 'Curso Basico aws', 'tarde', 4);
*****/

--- 01-12-2021 00:39:52
--- SQLite
/***** ERROR ******
table curso has no column named id
 ----- 
INSERT INTO curso (id, nombre, descripcion, turno, profesor_id)
VALUES (1, 'Alkemy', 'Curso de Alkemy', 'Mañana', 1),
 (2, 'NodeJS', 'Curso de Node', 'Mañana', 2),
 (3, 'Typescript', 'Curso de Typescript', 'tarde', 1),
 (4, 'Danza', 'Aprendiendo los pasos de piñon fijo', 'Mañana', 3),
 (5, 'AWS', 'Curso Basico aws', 'tarde', 4);
*****/

--- 01-12-2021 00:40:14
--- SQLite
INSERT INTO curso (codigo, nombre, descripcion, turno, profesor_id)
VALUES (1, 'Alkemy', 'Curso de Alkemy', 'Mañana', 1),
 (2, 'NodeJS', 'Curso de Node', 'Mañana', 2),
 (3, 'Typescript', 'Curso de Typescript', 'tarde', 1),
 (4, 'Danza', 'Aprendiendo los pasos de piñon fijo', 'Mañana', 3),
 (5, 'AWS', 'Curso Basico aws', 'tarde', 4);

--- 01-12-2021 00:40:33
--- SQLite
/***** ERROR ******
no such column: profesor.Apellido
 ----- 
SELECT profesor.Apellido , curso.Nombre, curso.turno

FROM profesor LEFT JOIN curso ON profesor.id = curso.PROFESOR_id;
*****/

--- 01-12-2021 00:40:53
--- SQLite
ALTER TABLE profesor RENAME COLUMN firtsName TO Nombre;

--- 01-12-2021 00:41:01
--- SQLite
ALTER TABLE profesor RENAME COLUMN lastName TO Apellido;

--- 01-12-2021 00:41:09
--- SQLite
/***** ERROR ******
near "de": syntax error
 ----- 
ALTER TABLE profesor RENAME COLUMN birthday TO Fecha de Nacimiento;
*****/

--- 01-12-2021 00:41:26
--- SQLite
ALTER TABLE profesor RENAME COLUMN birthday TO Fecha_Nacimiento;

--- 01-12-2021 00:41:32
--- SQLite
ALTER TABLE profesor RENAME COLUMN salary TO Salario;

--- 01-12-2021 00:41:35
--- SQLite
SELECT * FROM profesor;

--- 01-12-2021 00:41:52
--- SQLite
SELECT profesor.Apellido , curso.Nombre, curso.turno

FROM profesor LEFT JOIN curso ON profesor.id = curso.PROFESOR_id;

--- 01-12-2021 00:58:08
--- SQLite
SELECT apellido, nombre, fecha_nacimiento FROM profesor ORDER BY fecha_nacimiento ASC;

--- 01-12-2021 00:59:37
--- SQLite
SELECT * FROM profesor WHERE salario >= 80000;

--- 01-12-2021 01:00:56
--- SQLite
SELECT * FROM profesor WHERE fecha_nacimiento BETWEEN 01/01/1980 and 31/12/1990;

--- 01-12-2021 01:01:41
--- SQLite
SELECT * FROM profesor LIMIT 5;

--- 01-12-2021 01:02:30
--- SQLite
SELECT * FROM profesor WHERE apellido LIKE 'P%';

--- 01-12-2021 01:03:35
--- SQLite
SELECT * FROM profesor WHERE salario > 80000 AND fecha_nacimiento BETWEEN 01/01/1980 and 31/12/1990;

