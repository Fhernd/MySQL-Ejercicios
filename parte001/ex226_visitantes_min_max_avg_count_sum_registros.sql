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

-- 4. Solicite la cantidad de visitantes al stand (10 registros):
SELECT COUNT(*) FROM visitantes;

-- 5. Muestre la suma de la compra de todos los visitantes de "Alta Gracia" (78.5):
SELECT SUM(montocompra) FROM visitantes WHERE ciudad = 'Alta Gracia';

-- 6. Muestre el valor máximo de las compras efectuadas (53.50):
SELECT MAX(montocompra) FROM visitantes;

-- 7. Muestre la edad menor de los visitantes (20):
SELECT MIN(edad) FROM visitantes;

-- 8. Muestre el promedio de edades de los visitantes (33.66):
SELECT AVG(edad) FROM visitantes;

-- 9. Muestre el promedio del monto de compra (24.55):
SELECT AVG(montocompra) FROM visitantes;
