-- 1. Elimine la tabla "clientes" si existe:
DROP TABLE IF EXISTS clientes;

-- 2. Créela con los siguientes campos y clave:
CREATE TABLE clientes(
  documento CHAR(8),
  apellido VARCHAR(20),
  nombre VARCHAR(20),
  domicilio VARCHAR(30),
  PRIMARY KEY(documento)
 );

-- 3. Vea la estructura de los índices la tabla y analice la información:
SHOW INDEX FROM clientes;
