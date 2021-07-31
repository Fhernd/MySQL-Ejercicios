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


SELECT * FROM articulos;

-- 5. Actualice el precio a "400" del artículo cuya descripción sea "Epson Stylus C45":
UPDATE articulos SET precio = 400 
WHERE descripcion = 'Epson Style C45';

SELECT * FROM articulos;

-- 6. Actualice la cantidad a 100 de todas los teclados:
UPDATE articulos SET cantidad = 100 WHERE nombre = 'teclado';

SELECT * FROM articulos;

-- 7. Actualice la cantidad a 50 y el precio a 550 del artículo con código 2:
UPDATE articulos SET cantidad = 50, precio = 550 WHERE codigo = 2;

SELECT * FROM articulos;

-- 8. Actualice la cantidad a 100 de todos los registros con cantidad=1000 
-- (no hay registros que cumplan la condición, ningún registro afectado):
UPDATE articulos SET cantidad = 100 
WHERE cantidad = 1000;

SELECT * FROM articulos;
