-- 1. Elimine la tabla, si existe:
DROP TABLE IF EXISTS empleados;

-- 2. Cree la tabla eligiendo el tipo de dato adecuado para cada campo:
 CREATE TABLE empleados(
  nombre VARCHAR(20),
  documento CHAR(8),
  sexo CHAR(1),
  domicilio VARCHAR(30),
  fechaingreso DATE
 );

-- 3. Ingrese algunos registros:
 INSERT INTO empleados
  VALUES('Juan Perez','22333444','m','Colon 123','1990-10-08');
 INSERT INTO empleados
  VALUES('Ana Acosta','23333444','f','Caseros 987','1995-12-18');
 INSERT INTO empleados
  VALUES('Lucas Duarte','25333444','m','Sucre 235','2005-05-15');
 INSERT INTO empleados
  VALUES('Pamela Gonzalez','26333444','f','Sarmiento 873','1999-02-12');
 INSERT INTO empleados
  VALUES('Marcos Juarez','30333444','m','Rivadavia 801','2002-09-22');

-- 4. Muestre el nombre y la fecha de ingreso de los empleados de sexo masculino:
SELECT nombre, fechaingreso FROM empleados WHERE sexo = 'm';

-- 5. Modifique la fecha de ingreso del empleado con documento "22333444" a "1990-10-18":
UPDATE empleados SET fechaingreso = '1990-10-18' WHERE documento = '22333444';

SELECT * FROM empleados;

-- 6. Ingrese un empleado con valor para "fechaingreso" en la cual coloque 2 digitos correspondientes 
-- al año:
INSERT INTO empleados
  VALUES('Susana Duarte','30123456','f','Sucre 1234','99-02-12');

SELECT * FROM empleados;

-- 7. Ingrese un empleado colocando sólo un dígito en la parte de la fecha correspondiente al mes y 
-- día:
 INSERT INTO empleados
  VALUES('Daniel Herrero','30000001','m',NULL,'1980-2-03');

SELECT * FROM empleados;

-- 8. Ingrese una fecha de ingreso sin separadores:
 INSERT INTO empleados
  VALUES('Ana Juarez','31123123','f',NULL,'19900306');

SELECT * FROM empleados;

-- 9. Ingrese un valor de tipo fecha y hora:
 INSERT INTO empleados
  VALUES('Juan Mores','32222333','m',NULL,'1990-03-06 10:15');

-- Sólo guarda la parte de la fecha.

SELECT * FROM empleados;

-- 10. Ingrese un valor que MySQL no reconozca como fecha:
 INSERT INTO empleados
  VALUES('Hector Perez','34444555','m',NULL,'1990036');

-- Almacenará ceros.

SELECT * FROM empleados;