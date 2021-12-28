-- 1. Elimine ambas tablas si existen:
DROP TABLE IF EXISTS clientes;
DROP TABLE IF EXISTS empleados;
DROP TABLE IF EXISTS auxiliar;

-- 2. Cree las tablas dándoles el nombre equivocado, es decir, de el nombre "clientes" a la tabla que 
-- contiene los datos de los empleados y el nombre "empleados" a la tabla con la informaciómn de los 
-- clientes:
 CREATE TABLE clientes(
  documento CHAR(8) NOT NULL,
  nombre VARCHAR(30),
  domicilio VARCHAR(30),
  fechaingreso DATE,
  sueldo DECIMAL(6,2) UNSIGNED
 );

 CREATE TABLE empleados(
  documento CHAR(8) NOT NULL,
  nombre VARCHAR(30),
  domicilio VARCHAR(30),
  ciudad VARCHAR(30),
  provincia VARCHAR(30)
 );

-- 3. Vea la estructura de ambas tablas:
DESCRIBE clientes;
DESCRIBE empleados;

DROP TABLE IF EXISTS auxiliar;

-- 4. Intercambie los nombres de las dos tablas:
RENAME TABLE clientes TO auxiliar,
empleados TO clientes,
auxiliar TO empleados;

-- 5. Verifique el cambio de nombre:
DESCRIBE clientes;
DESCRIBE empleados;

-- 6. Vea si existe la tabla "auxiliar":
SHOW TABLES;
