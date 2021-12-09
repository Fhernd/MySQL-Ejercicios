-- 1. Elimine la tabla "clientes", si existe:
DROP TABLE IF EXISTS clientes;

-- 2. Créela y defina un índice por múltiples campos, por ciudad y provincia:
CREATE TABLE clientes (
  codigo INT UNSIGNED AUTO_INCREMENT,
  nombre VARCHAR(30) NOT NULL,
  domicilio VARCHAR(30),
  ciudad VARCHAR(20),
  provincia VARCHAR (20),
  telefono VARCHAR(11),
  PRIMARY KEY (codigo), 
  INDEX i_ciudadprovincia (ciudad,provincia)
 );

-- 3. Muestre los índices:
SHOW INDEX FROM clientes;