-- TABLE
CREATE TABLE curso (
    codigo int NOT NULL,
    nombre varchar(45) NOT NULL,
  	descripcion varchar(45),
  	turno varchar(45) not NULL, 
    PROFESOR_ID int,
    PRIMARY KEY (codigo),
    FOREIGN KEY (PROFESOR_ID) REFERENCES profesor(id)
);
CREATE TABLE profesor (
 
 id INT NOT NULL,

 Nombre VARCHAR(45) NOT NULL,

 Apellido varchar(45) NOT NULL,
  
 Fecha_Nacimiento VARCHAR(45),

 Salario INT NOT NULL,
 PRIMARY KEY(id)
);
 
-- INDEX
 
-- TRIGGER
 
-- VIEW
 
