-- 1. Elimine la tabla si existe:
DROP TABLE IF EXISTS alumnos;

-- 2. cree la tabla:
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

-- 4. Si el alumno tiene un promedio superior o igual a 4, muestre un mensaje "aprobado" en caso 
-- contrario "reprobado":
SELECT nombre, IF(promedio >= 4, 'aprobado', 'reprobado') AS paso 
FROM alumnos;

-- 5. Es política del profesor entregar una medalla a quienes tengan un promedio igual o superior a 9. 
-- Muestre los nombres y promedios de los alumnos y un mensaje "medalla" a quienes cumplan con ese 
-- requisito:
SELECT nombre, IF(promedio >= 9, 'Medalla', '') AS premio 
FROM alumnos;
