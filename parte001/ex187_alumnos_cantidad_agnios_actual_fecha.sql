-- 1. Elimine la tabla "alumnos" si existe:
DROP TABLE IF EXISTS alumnos;

-- 2. Cree la tabla con la siguiente estructura:
CREATE TABLE alumnos(
  documento CHAR(8) NOT NULL,
  nombre VARCHAR(30),
  domicilio VARCHAR(30),
  fechaNacimiento DATE,
  PRIMARY KEY (documento)
 );

-- 3. Ingrese los siguientes registros:
 INSERT INTO alumnos (documento,nombre,domicilio,fechaNacimiento)
  VALUES('22345345','Mariana Perez','Colon 234','1986-10-08');
 INSERT INTO alumnos (documento,nombre,domicilio,fechaNacimiento)
  VALUES('23545345','Marcos Morales','Avellaneda 348','1985-12-18');
 INSERT INTO alumnos (documento,nombre,domicilio,fechaNacimiento)
  VALUES('24356345','Analia Gonzalez','Caseros 444','1976-06-28');
 INSERT INTO alumnos (documento,nombre,domicilio,fechaNacimiento)
  VALUES('20254125','Ramiro Torres','Dinamarca 209','1978-01-28');
 INSERT INTO alumnos (documento,nombre,domicilio,fechaNacimiento)
  VALUES('20445778','Carmen Miranda','Uspallata 999','1980-05-30');
 INSERT INTO alumnos (documento,nombre,domicilio,fechaNacimiento)
  VALUES('28111444','Natalia Figueroa','Sarmiento 856','1986-04-29');

-- 4. El institulo quiere conocer las edades de los alumnos:
SELECT nombre, fechaNacimiento, CURRENT_DATE, YEAR(CURRENT_DATE) - YEAR(fechaNacimiento) AS 'edad'
FROM alumnos;
