-- 1. Elimine la tabla si existe:
DROP TABLE IF EXISTS articulos;

-- 2. Cree la tabla "articulos" con la siguiente estructura:
CREATE TABLE articulos (
    codigo INTEGER,
    nombre VARCHAR(20),
    descripcion VARCHAR(30),
    precio FLOAT
);

-- 3. Vea la estructura de la tabla (describe).
DESCRIBE articulos;

-- 4. Ingrese los siguientes registros:
INSERT INTO articulos (codigo, nombre, descripcion, precio)
  VALUES (1,'impresora','Epson Stylus C45',400.80);
INSERT INTO articulos (codigo, nombre, descripcion, precio)
  VALUES (2,'impresora','Epson Stylus C85',500);
INSERT INTO articulos (codigo, nombre, descripcion, precio)
  VALUES (3,'monitor','Samsung 14',800);
INSERT INTO articulos (codigo, nombre, descripcion, precio)
  VALUES (4,'teclado','ingles Biswal',100);
INSERT INTO articulos (codigo, nombre, descripcion, precio)
  VALUES (5,'teclado','español Biswal',90);

-- 5. Seleccione todos los datos de los registros cuyo nombre sea "impresora":
SELECT * FROM articulos 
WHERE nombre = 'impresora';

-- 6. Muestre sólo el código, descripción y precio de los teclados:
SELECT codigo, descripcion, precio 
FROM articulos 
WHERE nombre = 'teclado';
