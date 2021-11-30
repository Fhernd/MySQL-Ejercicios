-- 1. Elimine "articulos", si existe:
DROP TABLE IF EXISTS articulos;

-- 2. Cree la tabla, con la siguiente estructura:
CREATE TABLE articulos(
  codigo INT UNSIGNED AUTO_INCREMENT,
  nombre VARCHAR(25) NOT NULL,
  descripcion VARCHAR(30),
  precio DECIMAL(6,2) UNSIGNED,
  cantidad TINYINT UNSIGNED,
  PRIMARY KEY(codigo)
 );

-- 3. Ingrese algunos registros:
 INSERT INTO articulos (nombre, descripcion, precio,cantidad)
  VALUES ('impresora','Epson Stylus C45',400.80,20);
 INSERT INTO articulos (nombre, descripcion, precio,cantidad)
  VALUES ('impresora','Epson Stylus C85',500,30);
 INSERT INTO articulos (nombre, descripcion, precio,cantidad)
  VALUES ('monitor','Samsung 14',800,10);
 INSERT INTO articulos (nombre, descripcion, precio,cantidad)
  VALUES ('teclado','ingles Biswal',100,50);
 INSERT INTO articulos (nombre, descripcion, precio,cantidad)
  VALUES ('teclado','español Biswal',90,50);
 INSERT INTO articulos (nombre, descripcion, precio,cantidad)
  VALUES ('impresora multifuncion','HP 1410',300,20);

-- 4. Seleccione todos los artículos que comienzan con "impresora":
SELECT * FROM articulos WHERE nombre REGEXP '^impresora';

-- 5. Busque los artículos en los cuales el campo "descripcion" no tienen "H" ni "W":
SELECT * FROM articulos WHERE descripcion NOT REGEXP '[HW]';

-- 6. Seleccione las descripciones que contengan una letra "s" seguida de un caracter cualquiera y 
-- luego una "n":
SELECT * FROM articulos WHERE descripcion REGEXP 's.n';
