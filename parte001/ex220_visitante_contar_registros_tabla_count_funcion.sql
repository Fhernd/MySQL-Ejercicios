-- 1. Elimine la tabla "visitantes", si existe:
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

-- 5. Solicite la cantidad de visitantes que tienen teléfono (valor no nulo) (8 registros):
SELECT COUNT(telefono) FROM visitantes;

-- 6. Muestre la cantidad de visitantes de sexo masculino que acudieron al stand (3):
SELECT COUNT(*) FROM visitantes WHERE sexo = 'm';

-- 7. Muestre la cantidad de mujeres mayores de 25 años que acudieron al stand (4):
SELECT COUNT(*) FROM visitantes WHERE sexo = 'f' AND edad > 25;

-- 8. Muestre la cantidad de visitantes que no son de "Cordoba" (5):
SELECT COUNT(*) FROM visitantes WHERE ciudad <> 'Cordoba';

-- 9. Muestre la cantidad de visitantes que realizaron alguna compra (7):
SELECT COUNT(*) FROM visitantes WHERE montocompra > 0;

-- 10. Muestre la cantidad de visitantes que no realizaron compras (3):
SELECT COUNT(*) FROM visitantes WHERE montocompra = 0;
