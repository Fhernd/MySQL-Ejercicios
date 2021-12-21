-- 1. Elimine la tabla si existe:
DROP TABLE IF EXISTS alumnos;

-- 2. Cree la tabla:
CREATE TABLE alumnos(
  legajo INT(10) UNSIGNED AUTO_INCREMENT,
  nombre VARCHAR(30),
  documento CHAR(8),
  domicilio VARCHAR(30),
  PRIMARY KEY (legajo),
  UNIQUE i_documento (documento)
 );

-- 3. Ingrese algunos registros:
 INSERT INTO alumnos VALUES ('1353','Juan Lopez','22333444','Colon 123');
 INSERT INTO alumnos VALUES ('2345','Ana Acosta','24000555','Caseros 456');
 INSERT INTO alumnos VALUES ('2356','Jose Torres','26888777','Sucre 312');
 INSERT INTO alumnos VALUES ('3567','Luis Perez','28020020','Rivadavia 234');

SELECT * FROM alumnos;

-- 4. Intente ingresar un registro con clave primaria repetida (legajo "3567"):
-- INSERT INTO alumnos VALUES ('3567', 'Luis Felipe Bateman', '1234565', 'Calle 100');

-- 5. Ingrese el registro anterior reemplazando el existente:
REPLACE INTO alumnos values('3567', 'Luis Felipe Bateman', '1234565', 'Calle 100');

SELECT * FROM alumnos;

-- 6. Intente ingresar un alumno con documento repetido:
-- INSERT INTO alumnos VALUES ('8532', 'Luis Felipe Bateman', '26888777', 'Calle 100');

-- 7. Reemplace el registro:
REPLACE INTO alumnos values('2356', 'Karla Jara', '26888777', 'Calle 100');

SELECT * FROM alumnos;

-- 8. Elimine el índice único:
DROP INDEX i_documento ON alumnos;

-- 9. Ingrese con REPLACE el siguiente registro con documento existente:
REPLACE INTO alumnos VALUES('4888', 'Gustavo Garcia', '26888777', 'San Martin 846');

-- un registro afectado, no hubo eliminación solamente inserción.

-- 10. Muestre todos los registros:
SELECT * FROM alumnos;
-- note que hay dos alumnos con el mismo número de documento.
