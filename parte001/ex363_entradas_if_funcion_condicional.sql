-- 1. Elimine la tabla, si existe:
DROP TABLE IF EXISTS entradas;

-- 2. Cree la tabla:
 CREATE TABLE entradas(
  sala TINYINT UNSIGNED,
  fecha DATE,
  hora TIME,
  capacidad SMALLINT UNSIGNED,
  entradasvendidas SMALLINT UNSIGNED,
  PRIMARY KEY (sala,fecha,hora)
 );

-- 3. Ingrese algunos registros:
 INSERT INTO entradas VALUES (1,'2006-05-10','20:00',300,50);
 INSERT INTO entradas VALUES (1,'2006-05-10','23:00',300,250);
 INSERT INTO entradas VALUES (2,'2006-05-10','20:00',400,350);
 INSERT INTO entradas VALUES (2,'2006-05-11','20:00',400,380);
 INSERT INTO entradas VALUES (2,'2006-05-11','23:00',400,400);
 INSERT INTO entradas VALUES (3,'2006-05-12','20:00',350,350);
 INSERT INTO entradas VALUES (3,'2006-05-12','22:30',350,100);
 INSERT INTO entradas VALUES (4,'2006-05-12','20:00',250,0);

-- 4. Muestre todos los registros y un mensaje si las entradas para una función están agotadas:
SELECT sala, fecha, hora, IF(capacidad = entradasvendidas, 'Sala llena', 
capacidad - entradasvendidas) AS 'Entradas disponibles'
FROM entradas;

-- 5. Muestre todos los datos de las funciones que tienen vendidad entradas y muestre un mensaje si se 
-- vendió más o menos de la mitad de la capacidad de la sala:
SELECT *, 
IF(entradasvendidas > (capacidad DIV 2), 'Más de la mitad vendidas', 'Menos de la mitdad vendidas') AS 'Vendidas' 
FROM entradas 
WHERE entradasvendidas > 0;
