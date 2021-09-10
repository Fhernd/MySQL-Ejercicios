-- 1. Elimine la tabla "empleados" si existe:
DROP TABLE IF EXISTS empleados;

-- 2. Cree una tabla llamada "empleados" con la estructura necesaria para almacenar la siguiente información:
CREATE TABLE empleados (
   nombre VARCHAR(32) NOT NULL,
   documento VARCHAR(10) NOT NULL PRIMARY KEY,
   sexo CHAR(1) NOT NULL DEFAULT 'f',
   domicilio VARCHAR(48),
   sueldobasico DECIMAL(6,2) UNSIGNED NOT NULL DEFAULT 1000,
   hijos TINYINT UNSIGNED NOT NULL DEFAULT 0
);

-- 3. Ingrese algunos registros:
 INSERT INTO empleados (nombre,documento,sexo,sueldobasico,hijos)
  VALUES ('Juan Perez','22333444','m',300,1);
 INSERT INTO empleados (nombre,documento,sexo,sueldobasico,hijos)
  VALUES ('Ana Acosta','21333444','f',400,2);
 INSERT INTO empleados (nombre,documento,sexo,sueldobasico,hijos)
  VALUES ('Alberto Lopez','24333444','m',600,0);
 INSERT INTO empleados (nombre,documento,sexo,sueldobasico,hijos)
  VALUES ('Carlos Sanchez','30333444','m',550,3);
 INSERT INTO empleados (nombre,documento,sexo,sueldobasico,hijos)
  VALUES ('Mariana Torres','23444555','f',600,1);
 INSERT INTO empleados (nombre,documento,sexo,sueldobasico,hijos)
  VALUES ('Marcos Garcia','23664555','m',1500,2);

-- 4. La empresa está pensando en aumentar un 10% el sueldo a los empleados, y quiere saber a cuánto 
-- subiría cada sueldo básico, para ello usamos la siguiente sentencia en la cual incluimos una 
-- columna que hará el cálculo de cada sueldo más el 10%: 
SELECT documento, nombre, sueldobasico, sueldobasico * 0.1, sueldobasico * 1.1 FROM empleados;

-- 5. La empresa paga un salario familiar por hijos a cargo, $200 por cada hijo. Necesitamos el nombre 
-- del empleado, el sueldo básico, la cantidad de hijos a cargo, el total del salario familiar y el 
-- sueldo final (incluyendo el salario familiar):
SELECT nombre, sueldobasico, hijos, hijos * 200 AS 'sueldo_familiar', sueldobasico + hijos * 200 AS 'sueldo_final'
FROM empleados;