-- 1. Elimine la tabla "alumnos" si existe:
DROP TABLE IF EXISTS alumnos;

-- 2. Cree la tabla con la siguiente estructura:
 CREATE TABLE alumnos(
  legajo VARCHAR(4) NOT NULL,
  documento CHAR(8) NOT NULL,
  apellido VARCHAR(30),
  nombre VARCHAR(30),
  domicilio VARCHAR(30),
  PRIMARY INDEX (legajo)
 );

-- 3. Vea la estructura de los índices de la tabla y analice la información:
SHOW INDEX FROM alumnos;
