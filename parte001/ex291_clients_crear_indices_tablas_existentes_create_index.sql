-- 1. Elimine la tabla "clientes", si existe:
DROP TABLE IF EXISTS clientes;

-- 2. Créela con esta estructura:
 create table clientes (
  codigo INT UNSIGNED AUTO_INCREMENT,
  nombre VARCHAR(30) NOT NULL,
  domicilio VARCHAR(30),
  ciudad VARCHAR(20),
  provincia VARCHAR (20),
  telefono VARCHAR(11)
 );

-- 3. Agregue un índice común por ciudad y provincia:
CREATE INDEX i_ciudadprovincia ON clientes (ciudad, provincia);

-- 4. Vea la información de los índices:
SHOW INDEX FROM clientes;

-- 5. Agregue un índice único por el campo "documento":
CREATE UNIQUE INDEX i_documento ON clientes (documento);

SHOW INDEX FROM clientes;