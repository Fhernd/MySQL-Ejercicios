-- 1. Elimine la tabla si existe:
DROP TABLE IF EXISTS facturas;

-- 2. Intente crear la tabla con la siguiente estructura:
-- create table facturas(
--  serie CHAR(1) NOT NULL,
--  numero int(10) zerofill auto_increment,
--  descripcion varCHAR(30),
--  precioporunidad decimal(5,2) UNSIGNED,
--  cantidad tinyint UNSIGNED,
--  primary key (serie,numero) 
-- );

-- 3. Aparece un mensaje de error, la tabla no puede ser creada porque el campo definido 
-- como "auto_increment" es secundario (primero está "serie") y sabemos que un campo "auto_increment" 
-- debe estar primero en orden al ser definido parte de la clave compuesta.

-- 4. Cree la tabla cambiando el orden de los campos estabecidos como clave primaria:
 CRATE TABLE facturas(
  serie CHAR(1) NOT NULL,
  numero int(10) ZEROFILL AUTO_INCREMENT,
  numeroitem SMALLINT UNSIGNED NOT NULL,
  descripcion varCHAR(30),
  precioporunidad DECIMAL(5,2) UNSIGNED,
  cantidad tinyint UNSIGNED,
  PRIMARY KEY (numero, serie, numeroitem) 
 );

-- Tenga en cuenta al ingresar registros que el campo "numero" se autoincrementará sin tener en cuenta 
-- los demás campos.

-- 5. Ingrese 3 registros con igual "serie", "numero" y distintos números de items:
 INSERT INTO facturas (serie,numero,numeroitem,descripcion,precioporunidad,cantidad)
  VALUES ('A',100,1,'escuadra 20 cm.',2.50,20);
 INSERT INTO facturas (serie,numero,numeroitem,descripcion,precioporunidad,cantidad)
  VALUES ('A',100,2,'escuadra 50 cm.',5,30);
 INSERT INTO facturas (serie,numero,numeroitem,descripcion,precioporunidad,cantidad)
  VALUES ('A',100,3,'goma lapiz-tinta',0.35,100);

-- 6. Ingrese los siguientes registros:
 INSERT INTO facturas (serie,numero,numeroitem,descripcion,precioporunidad,cantidad)
  VALUES ('A',102,1,'lapices coloresx6',4.40,50);
 INSERT INTO facturas (serie,numero,numeroitem,descripcion,precioporunidad,cantidad)
  VALUES ('A',102,2,'lapices coloresx12',8,60);
 INSERT INTO facturas (serie,numero,numeroitem,descripcion,precioporunidad,cantidad)
  VALUES ('B',102,1,'lapices coloresx24',12.35,100);
 INSERT INTO facturas (serie,numero,numeroitem,descripcion,precioporunidad,cantidad)
  VALUES ('B',102,2,'goma lapiz-tinta',0.35,200);

-- 7. Ingrese los siguientes registros y vea qué valor da al "numero" que no se ingresa:
 INSERT INTO facturas (serie,numeroitem,descripcion,precioporunidad,cantidad)
  VALUES ('A',1,'compas plastico',12,50);
 INSERT INTO facturas (serie,numeroitem,descripcion,precioporunidad,cantidad)
  VALUES ('A',1,'compas metal',18.90,80);

-- 8. Intente ingresar un registro con valores de clave repetida:
-- INSERT INTO facturas (serie,numero,numeroitem,descripcion,precioporunidad,cantidad)
-- VALUES ('A',104,1,'compas metal',18.90,80);

-- 9. Muestre los registros concatenando "serie" con "numero", usando un alias para esa columna, 
-- muestre los demás campos y ordene por el alias:
 SELECT CONCAT_WS('-',serie,numero) AS serienumero,
  numeroitem,descripcion,precioporunidad,cantidad
  FROM facturas
  ORDER BY serienumero;

-- 10. Agrupe los registros por serie y número de factura y muestre el total (en una columna 
-- calculada) de cada factura:
 SELECT serie,numero,
  SUM(precioporunidad*cantidad) AS total
  FROM facturas
  GROUP BY serie,numero;
