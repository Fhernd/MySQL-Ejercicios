-- 1. Elimine "articulos", si existe:
DROP TABLE IF EXISTS articulos;

-- 2. Cree la tabla, con la siguiente estructura:
CREATE TABLE articulos(
    codigo INTEGER,
    nombre VARCHAR(20),
    descripcion VARCHAR(30),
    precio FLOAT,
    cantidad INTEGER
);

-- 3. Vea la estructura de la tabla (describe).
DESCRIBE articulos;

-- 4. Ingrese algunos registros:
INSERT INTO articulos (codigo, nombre, descripcion, precio,cantidad)
  VALUES (1,'impresora','Epson Stylus C45',400.80,20);
 INSERT INTO articulos (codigo, nombre, descripcion, precio,cantidad)
  VALUES (2,'impresora','Epson Stylus C85',500,30);
 INSERT INTO articulos (codigo, nombre, descripcion, precio,cantidad)
  VALUES (3,'monitor','Samsung 14',800,10);
 INSERT INTO articulos (codigo, nombre, descripcion, precio,cantidad)
  VALUES (4,'teclado','ingles Biswal',100,50);
 INSERT INTO articulos (codigo, nombre, descripcion, precio,cantidad)
  VALUES (5,'teclado','español Biswal',90,50);

-- 5. Seleccione todos los registros de la tabla. (select).
SELECT * FROM articulos;

-- 6. Muestre los datos de las impresoras.
SELECT * FROM articulos 
WHERE nombre = 'impresora';

-- 7. Seleccione los artículos cuyo precio sea mayor o igual a 500:
SELECT * FROM articulos
WHERE precio >= 500;

-- 8. Seleccione los artículos cuya cantidad sea menor a 30:
SELECT * FROM articulos 
WHERE cantidad < 30;

-- 9. Selecciones el nombre y descripción de los artículos que no cuesten $100:
SELECT nombre, descripcion FROM articulos 
WHERE precio <> 100;