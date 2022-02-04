-- 1. Elimine la tabla si existe:
DROP TABLE IF EXISTS alumnos;

-- 2. Cree la tabla:
CREATE TABLE alumnos(
  legajo CHAR(5) NOT NULL,
  nombre VARCHAR(30),
  promedio DECIMAL(4,2)
);

-- 3. Ingrese los siguientes registros:
 INSERT INTO alumnos VALUES (3456,'Perez Luis',8.5);
 INSERT INTO alumnos VALUES (3556,'Garcia Ana',7.0);
 INSERT INTO alumnos VALUES (3656,'Ludueña Juan',9.6);
 INSERT INTO alumnos VALUES (2756,'Moreno Gabriela',4.8);
 INSERT INTO alumnos VALUES (4856,'Morales Hugo',3.2);
 INSERT INTO alumnos VALUES (7856,'Gomez Susana',6.4);

-- 4- Si el alumno tiene un promedio menor a 4, muestre un mensaje "reprobado", si el promedio es 
-- mayor o igual a 4 y menor a 7, muestre "regular", si el promedio es mayor o igual a 7, 
-- muestre "promocionado", usando la primera sintaxis de "case":
SELECT legajo, promedio,  
CASE TRUNCATE(promedio, 0)
WHEN 0 THEN 'reprobado' 
WHEN 1 THEN 'reprobado' 
WHEN 2 THEN 'reprobado' 
WHEN 3 THEN 'reprobado' 
WHEN 4 THEN 'regular' 
WHEN 5 THEN 'regular' 
WHEN 6 THEN 'regular' 
ELSE 'promocionado' END AS 'estado' 
FROM alumnos;

-- 5- Obtenga la misma salida anterior pero empleando la  otra sintaxis de "case":
SELECT legajo, promedio,  
CASE WHEN promedio < 4 THEN 'reprobado' 
WHEN promedio >= 4 AND promedio < 7 THEN 'regular'
ELSE 'promocionado' END AS 'estado' 
FROM alumnos;
