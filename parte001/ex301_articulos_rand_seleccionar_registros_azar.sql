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

-- 4. El comercio quiere tomar 2 artículos al azar para ofrecer una oferta especial haciendo un 
-- descuento. Seleccione 2 registros al azar de la tabla "articulos":
SELECT * FROM articulos ORDER BY RAND() LIMIT 2;
SELECT * FROM articulos ORDER BY RAND() LIMIT 2;
SELECT * FROM articulos ORDER BY RAND() LIMIT 2;
