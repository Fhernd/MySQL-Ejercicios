-- 1. Elimine la tabla "pedidos" si existe:
DROP TABLE IF EXISTS pedidos;

-- 2. Cree la tabla eligiendo el tipo de dato adecuado para cada campo
CREATE TABLE pedidos (
    numero INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(32) NOT NULL DEFAULT 'empanada',
    tipo VARCHAR(24) NOT NULL,
    precio DECIMAL(4,2) UNSIGNED DEFAULT 1,
    cantidad MEDIUMINT UNSIGNED DEFAULT 12,
    domicilio VARCHAR(32) NOT NULL
);

DESCRIBE pedidos;

-- 3. Ingrese los siguientes registros:
 INSERT INTO pedidos (nombre,tipo,precio,cantidad,domicilio)
  VALUES('piza','muzarela','4.00',3,'Sarmiento 235');
 INSERT INTO pedidos (tipo,precio,cantidad,domicilio)
  VALUES('arabe','1.00',24,'Urquiza 296');
 INSERT INTO pedidos (nombre,tipo,domicilio)
  VALUES('empanada','salteña','Colon 309');
 INSERT INTO pedidos (tipo,domicilio)
  VALUES('arabe','San Martin 444');
 INSERT INTO pedidos (nombre,tipo,precio,domicilio)
  VALUES('piza','especial','4.00','Avellaneda 395');

-- 4. Muestre todos los campos de todos los pedidos para ver cómo se guardaron los datos no ingresados:
SELECT * FROM pedidos;
