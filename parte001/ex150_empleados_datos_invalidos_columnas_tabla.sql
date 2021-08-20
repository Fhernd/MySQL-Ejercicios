-- 1. Elimine la tabla "empleados" si existe:
DROP TABLE IF EXISTS empleados;

-- 2. Cree la tabla:
 CREATE TABLE empleados(
  documento CHAR(8) NOT NULL,
  nombre VARCHAR(30) NOT NULL,
  domicilio VARCHAR(30),
  fechaingreso DATE NOT NULL,
  fechanacimiento DATE,
  PRIMARY KEY(documento)
);

-- 3. Intente ingresar la fecha "20-10-2005" para la fecha de ingreso:
 INSERT INTO empleados (documento,fechaingreso,fechanacimiento)
  VALUES('22333444','20-10-2005',NULL);
-- Se almacenan ceros.

SELECT * FROM empleados;

-- 5.. Intente almacenar "NULL" en "fechaingreso":
-- INSERT INTO empleados (documento,fechaingreso,fechanacimiento)
--  VALUES('22333444',NULL,'2005-10-10');
-- Muestra un mensaje de error.

-- 6. Almacene un valor numérico en un campo de tipo caracter:
INSERT INTO empleados VALUES ('9515456', 'Pedro', 123456789, '2021-03-17', NULL);

SELECT * FROM empleados;

-- 7. Almacene en "documento" el valor "22.345.678".:
INSERT INTO empleados VALUES ('22.345.678', 'Laura', 'Avenida 30', '2021-03-17', '1983-04-04');

SELECT * FROM empleados;
