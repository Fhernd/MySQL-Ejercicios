DROP TABLE IF EXISTS visitantes;

-- 2. Créela con la siguiente estructura:
 CREATE TABLE visitantes(
  nombre VARCHAR(30),
  edad TINYINT UNSIGNED,
  sexo CHAR(1),
  domicilio VARCHAR(30),
  ciudad VARCHAR(20),
  telefono VARCHAR(11),
  montocompra DECIMAL (6,2) UNSIGNED
 );

-- 3. Ingrese algunos registros:
 INSERT INTO visitantes (nombre,edad, sexo,domicilio,ciudad,telefono,montocompra)
  VALUES ('Susana Molina', 28,'f','Colon 123','Cordoba',NULL,45.50); 
 INSERT INTO visitantes (nombre,edad, sexo,domicilio,ciudad,telefono,montocompra)
  VALUES ('Marcela Mercado',36,'f','Avellaneda 345','Cordoba','4545454',0);
 INSERT INTO visitantes (nombre,edad, sexo,domicilio,ciudad,telefono,montocompra)
  VALUES ('Alberto Garcia',35,'m','Gral. Paz 123','Alta Gracia','03547123456',25); 
 INSERT INTO visitantes (nombre,edad, sexo,domicilio,ciudad,telefono,montocompra)
  VALUES ('Teresa Garcia',33,'f','Gral. Paz 123','Alta Gracia','03547123456',0);
 INSERT INTO visitantes (nombre,edad, sexo,domicilio,ciudad,telefono,montocompra)
  VALUES ('Roberto Perez',45,'m','Urquiza 335','Cordoba','4123456',33.20);
 INSERT INTO visitantes (nombre,edad, sexo,domicilio,ciudad,telefono,montocompra)
  VALUES ('Marina Torres',22,'f','Colon 222','Villa Dolores','03544112233',25);
 INSERT INTO visitantes (nombre,edad, sexo,domicilio,ciudad,telefono,montocompra)
  VALUES ('Julieta Gomez',24,'f','San Martin 333','Alta Gracia','03547121212',53.50);
 INSERT INTO visitantes (nombre,edad, sexo,domicilio,ciudad,telefono,montocompra)
  VALUES ('Roxana Lopez',20,'f','Triunvirato 345','Alta Gracia',NULL,0);
 INSERT INTO visitantes (nombre,edad, sexo,domicilio,ciudad,telefono,montocompra)
  VALUES ('Liliana Garcia',50,'f','Paso 999','Cordoba','4588778',48);
 INSERT INTO visitantes (nombre,edad, sexo,domicilio,ciudad,telefono,montocompra)
  VALUES ('Juan Torres',43,'m','Sarmiento 876','Cordoba','4988778',15.30);

-- 4. Obtenga el total de las compras agrupados por ciudad y sexo:
SELECT ciudad, sexo, SUM(montocompra) FROM visitantes GROUP BY ciudad, sexo;

-- 5. Obtenga el total de las compras agrupados por ciudad y sexo, considerando sólo las sumas 
-- superiores a 50 pesos:
SELECT ciudad, sexo, SUM(montocompra) suma
FROM visitantes 
GROUP BY ciudad, sexo
HAVING suma > 50;

-- 6. Muestre el monto mayor de compra agrupado por ciudad, siempre que el valor supere los 30 pesos, 
-- considerando sólo los visitantes con telefono no nulo:
SELECT ciudad, MAX(montocompra) mayor
FROM visitantes 
WHERE telefono IS NOT NULL 
GROUP BY ciudad 
HAVING mayor > 30;

-- 7. Agrupe por ciudad y muestre para cada grupo (ciudad) el total de visitantes, la suma de sus 
-- compras y el promedio de compras: 
SELECT ciudad, COUNT(*), SUM(montocompra) suma, AVG(montocompra) promedio
FROM visitantes 
GROUP BY ciudad, sexo;
