-- 1. Elimine la tabla, si existe:
DROP TABLE IF EXISTS articulos;

-- 2. Cree la tabla con la siguiente estructura:
 CREATE TABLE articulos(
  codigo INT UNSIGNED AUTO_INCREMENT,
  nombre VARCHAR(20) NOT NULL,
  descripcion VARCHAR(30),
  precio DECIMAL(4,2) UNSIGNED,
  PRIMARY KEY(codigo)
 );

DESCRIBE articulos;

-- 3. Ingrese los siguientes registros:
 insert into articulos (nombre,descripcion,precio)
  values('escuadra','plastico 20 cm.',3.50);
 insert into articulos (nombre,descripcion,precio)
  values('lápices colores','Faber x12',4.50);
 insert into articulos (nombre,descripcion,precio)
  values('lápices colores','Faber x24',7.50);
 insert into articulos (nombre,descripcion,precio)
  values('regla','30 cm.',2.50);
 insert into articulos (nombre,descripcion,precio)
  values('fibras','Faber x12',10.30);
 insert into articulos (nombre,descripcion,precio)
  values('fibras','Faber x6',5.10);

-- 4. El comercio, que hasta ahora ha vendido sus artículos por mayor comenzará la venta por menor. 
-- Necesita alterar la tabla modificando el nombre del campo "precio" por "preciopormayor" además 
-- desea redefinirlo como no nulo:
ALTER TABLE articulos CHANGE precio preciopormayor DECIMAL(4,2) UNSIGNED NOT NULL;

DESCRIBE articulos;

-- 5. También necesita alterar la tabla agregando un campo para almacenar el precio por menor para 
-- cada artículo. Agrege un campo llamado "preciopormenor" que no permita valores nulos:
ALTER TABLE articulos ADD preciopormenor DECIMAL(4, 2) UNSIGNED NOT NULL;

DESCRIBE articulos;

-- 6. Muestre todos los registros:
SELECT * FROM articulos;

-- 7. Actualice el campo "preciopormenor" de todos los registros, dándole el valor del campo "precio" 
-- incrementado en un 10%:
UPDATE articulos SET preciopormenor = preciopormayor * 1.10;

-- 8. Muestre todos los registros:
SELECT * FROM articulos;