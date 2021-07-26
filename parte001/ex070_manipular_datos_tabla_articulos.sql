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

-- 5. Seleccione todos los registros de la tabla:
SELECT * FROM articulos;

-- 6. Elimine los artículos cuyo precio sea mayor o igual a 500:
DELETE FROM articulos WHERE precio >= 500;

SELECT * FROM articulos;

-- 7. Elimine todas las impresoras:
DELETE FROM articulos
WHERE nombre = 'impresora';

SELECT * FROM articulos;

-- 8. Elimine todos los artículos cuyo código sea diferente a 4:
DELETE FROM articulos WHERE codigo <> 4;

SELECT * FROM articulos;
