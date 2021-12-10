-- 1. Elimine la tabla "alumnos" si existe:
DROP TABLE IF EXISTS alumnos;

-- 2. Cree la tabla definiendo una clave primaria compuesta (año de inscripción y número de 
-- inscripto), un índice único por el campo "documento" y un índice común por ciudad y provincia:
 CREATE TABLE alumnos(
  agnio YEAR NOT NULL,
  numero INT UNSIGNED NOT NULL,
  nombre VARCHAR(30),
  documento CHAR(8) NOT NULL,
  domicilio VARCHAR(30),
  ciudad VARCHAR(20),
  provincia VARCHAR(20),  
  PRIMARY KEY(agnio,numero),
  UNIQUE i_documento (documento),
  INDEX i_ciudadprovincia (ciudad,provincia)
 );

-- 3. Vea los índices de la tabla:
SHOW INDEX FROM alumnos;

-- 4. Ingrese algunos registros. Ingrese 2 ó 4 alumnos para los años 2004, 2005 y 2006:
INSERT INTO alumnos VALUES (2004, 1001, 'Carlos Pérez', '12345678', 'Carrera 1ra', 'Bogotá', 'Cundinamarca');
INSERT INTO alumnos VALUES (2005, 1001, 'Carlos Pérez', '54567233', 'Carrera 1ra', 'Bogotá', 'Cundinamarca');
INSERT INTO alumnos VALUES (2006, 1001, 'Carlos Pérez', '11111111', 'Carrera 1ra', 'Bogotá', 'Cundinamarca');

-- 5. Intente ingresar un alumno con clave primaria repetida:
-- INSERT INTO alumnos VALUES (2004, 1001, 'Adriana López', '98765432', 'Carrera 1ra', 'Bogotá', 'Cundinamarca');

-- 6. Intente ingresar un alumno con documento repetido:
INSERT INTO alumnos VALUES (2007, 1001, 'Camila Robledo', '12398754', 'Carrera 1ra', 'Bogotá', 'Cundinamarca');

-- 7. Ingrese varios alumnos de la misma ciudad y provincia:
INSERT INTO alumnos VALUES (2004, 1002, 'Jovany Contreras', '95175345', 'Carrera 2ra', 'Bogotá', 'Cundinamarca');
INSERT INTO alumnos VALUES (2005, 1003, 'Daniel Gaviria', '75385292', 'Carrera 3ra', 'Bogotá', 'Cundinamarca');
INSERT INTO alumnos VALUES (2006, 1004, 'Andrés Jarro', '91374562', 'Carrera 4ra', 'Bogotá', 'Cundinamarca');

SELECT * FROM alumnos;