-- 1. Elimine la tabla "inscriptos" si existe:
DROP TABLE IF EXISTS inscriptos;

-- 2. Cree la tabla:
 CREATE TABLE inscriptos(
  documento CHAR(8) NOT NULL, 
  nombre VARCHAR(30),
  deporte VARCHAR(15) NOT NULL,
  agnio YEAR,
  matricula CHAR(1) DEFAULT 'N'
 );

-- 3. Ingrese los siguientes registros:
 INSERT INTO inscriptos VALUES ('35333444','Juan Lopez','tenis','1990','S');
 INSERT INTO inscriptos VALUES ('35333444','Juan Lopez','basquet','1990','S');
 INSERT INTO inscriptos VALUES ('35333444','Juan Lopez','natación','1990','S');
 INSERT INTO inscriptos VALUES ('36333444','Ana Juarez','tenis','1990','S');
 INSERT INTO inscriptos VALUES ('36333444','Ana Juarez','natación','1990','S');
 INSERT INTO inscriptos VALUES ('35333444','Juan Lopez','voley','1991','S');
 INSERT INTO inscriptos VALUES ('35333444','Juan Lopez','voley','1992','S');
 INSERT INTO inscriptos VALUES ('35333444','Juan Lopez','tenis','1992','S');
 INSERT INTO inscriptos VALUES ('36333444','Ana Juarez','tenis','1991','S');
 INSERT INTO inscriptos VALUES ('37333444','Luis Duarte','tenis','1990','S');
 INSERT INTO inscriptos VALUES ('37333444','Luis Duarte','tenis','1991','S');

-- 4. Muestre los nombres de los inscriptos sin repetir:
SELECT DISTINCT nombre FROM inscriptos;

-- 5. Muestre los nombres de los deportes sin repetir:
SELECT DISTINCT deporte FROM inscriptos;

-- 6. Muestre la cantidad de alumnos DISTINTOS inscriptos en cada deporte:
SELECT deporte, COUNT(DISTINCT nombre) 
FROM inscriptos 
GROUP BY deporte;

-- 7. Muestre la cantidad de inscriptos por año, sin considerar los alumnos que se inscribieron en más 
-- de un deporte:
SELECT agnio, COUNT(DISTINCT nombre) 
FROM inscriptos 
GROUP BY agnio 
HAVING COUNT(nombre) = 1;
