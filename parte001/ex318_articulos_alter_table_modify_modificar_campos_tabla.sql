-- 1. Elimine "articulos", si existe:
DROP TABLE IF EXISTS articulos;

-- 2. Cree la tabla, con la siguiente estructura:
CREATE TABLE articulos(
  codigo INT UNSIGNED,
  nombre varchar(25) NOT NULL,
  descripcion VARCHAR(30),
  precio DECIMAL(4,2) UNSIGNED,
  cantidad TINYINT,
  PRIMARY KEY(codigo)
 );

DESCRIBE articulos;

-- 3. Modifique el campo "precio" para que pueda guardar valores hasta "9999.99":
ALTER TABLE articulos 
MODIFY precio DOUBLE(6,2) UNSIGNED;

DESCRIBE articulos;

-- 4. Modifique el campo "codigo" para que se autoincremente:
ALTER TABLE articulos 
MODIFY codigo INT UNSIGNED AUTO_INCREMENT;

DESCRIBE articulos;

-- 5. Modifique el campo "cantidad" para que no permita valores negativos:
ALTER TABLE articulos 
MODIFY cantidad TINYINT UNSIGNED;

DESCRIBE articulos;
