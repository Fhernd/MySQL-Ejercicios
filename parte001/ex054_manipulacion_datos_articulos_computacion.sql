-- 1. Elimine la tabla si existe:
DROP TABLE IF EXISTS articulos;

-- 2. Cree la tabla "articulos" con los campos necesarios para almacenar los siguientes datos:
CREATE TABLE articulos (
    codigo INTEGER,
    nombre VARCHAR(20),
    descripcion VARCHAR(30),
    precio FLOAT
);

-- 3. Vea la estructura de la tabla (describe).
DESCRIBE articulos;

-- 4. Ingrese algunos registros:
INSERT INTO articulos (codigo, nombre, descripcion, precio)
  VALUES (1,'impresora','Epson Stylus C45',400.80);
INSERT INTO articulos (codigo, nombre, descripcion, precio)
  VALUES (2,'impresora','Epson Stylus C85',500);
INSERT INTO articulos (codigo, nombre, descripcion, precio)
  VALUES (3,'monitor','Samsung 14',800);

-- 5. Muestre todos los campos de todos los registros.
SELECT * FROM articulos;

-- 6. Muestre sólo el nombre, descripción y precio.
SELECT nombre, descripcion, precio FROM articulos;
