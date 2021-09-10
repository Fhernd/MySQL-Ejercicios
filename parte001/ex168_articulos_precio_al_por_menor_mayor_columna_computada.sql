-- 1. 
DROP TABLE IF EXISTS articulos;

-- 2. 
CREATE TABLE articulos(
   codigo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
   nombre VARCHAR(32) NOT NULL,
   precio DECIMAL(5,2) UNSIGNED NOT NULL DEFAULT 100,
   cantidad SMALLINT UNSIGNED NOT NULL DEFAULT 10
);

-- 3. Ingrese los siguientes registros:
 INSERT INTO articulos (nombre,precio,cantidad)
  values ('lapices coloresx6',1.4,100);
 INSERT INTO articulos (nombre,precio,cantidad)
  values ('lapices coloresx12',2.5,100);
 INSERT INTO articulos (nombre,precio,cantidad)
  values ('lapices coloresx24',4.7,100);
 INSERT INTO articulos (nombre,precio,cantidad)
  values ('goma tinta',0.2,150);
 INSERT INTO articulos (nombre,precio,cantidad)
  values ('birome',1.2,200);
 INSERT INTO articulos (nombre,precio,cantidad)
  values ('escuadra',3.2,200);
 INSERT INTO articulos (nombre,precio,cantidad)
  values ('compás plástico',5,200);
 INSERT INTO articulos (nombre,precio,cantidad)
  values ('compás metal',8.4,250);

-- 4. El precio representa el costo del artículo al comprarlo. Este comercio vende sus artículos por 
-- mayor y por menor, para la venta minorista incrementa el precio de costo en un 10%, para la venta
-- mayorista lo incrementa en un 5%. Muestre los precios de cada artículo y calcule en 2 columnas 
-- diferentes el precio de cada uno de ellos al venderse por mayor y por menor:
SELECT nombre, precio, precio * 1.1 AS 'precio_minorista', precio * 1.05 AS 'precio_mayorista'
FROM articulos;

-- 5. El gerente de dicho comercio necesita saber cuánto dinero hay invertido en cada artículo, para 
-- ello, necesitamos multiplicar el precio de cada artículo por la cantidad:
SELECT nombre, precio, cantidad, precio * cantidad AS 'total' FROM articulos;