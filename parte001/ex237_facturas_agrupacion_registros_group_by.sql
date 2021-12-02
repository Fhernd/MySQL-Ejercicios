-- 1. Elimine la tabla si existe:
DROP TABLE IF EXISTS facturas;

-- 2. Cree la tabla:
CREATE TABLE facturas(
  numero int(10) zerofill,
  descripcion varchar(30),
  precioporunidad decimal(5,2) unsigned,
  cantidad tinyint unsigned
 );

-- 3. Ingrese algunos registros:
INSERT INTO facturas VALUES (504,'escuadra 20 cm.',2.5,100);
INSERT INTO facturas VALUES (504,'escuadra 50 cm.',5,80);
INSERT INTO facturas VALUES (2002,'compas plastico',8,120);
INSERT INTO facturas VALUES (2002,'compas metal',15.4,100);
INSERT INTO facturas VALUES (2002,'escuadra 20 cm.',2.5,100);
INSERT INTO facturas VALUES (4567,'escuadra 50 cm.',5,200);

-- 4. Cuente la cantidad de items por factura:
SELECT numero, COUNT(*) FROM facturas GROUP BY numero;

-- 5. Sume la cantidad de productos de las facturas:
SELECT numero, SUM(cantidad) FROM facturas GROUP BY numero;

-- 6. Muestre el total en dinero de las facturas:
SELECT numero, SUM(cantidad * precioporunidad) FROM facturas GROUP BY numero;
