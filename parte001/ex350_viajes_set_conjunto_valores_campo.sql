-- 1. Elimine la tabla si existe:
DROP TABLE IF EXISTS viajes;

-- 2. Cree la tabla:
 CREATE TABLE viajes(
  codigo INT UNSIGNED AUTO_INCREMENT,
  nombre VARCHAR(50),
  pension ENUM ('no','media','completa') NOT NULL,
  ciudades SET ('Acapulco','DF','Cancun','Puerto Vallarta','Cuernavaca') NOT NULL,
  dias TINYINT UNSIGNED,
  salida DATE,
  precioporpersona DECIMAL(8,2) UNSIGNED,
  PRIMARY KEY (codigo)
 );

-- 3. Ingrese los siguientes registros:
 INSERT INTO viajes (nombre,pension,ciudades,dias,salida)
  VALUES ('Mexico mágico','completa','DF,Acapulco',15,'2005-12-01');
 INSERT INTO viajes (nombre,pension,ciudades,dias,salida)
  VALUES ('Mexico especial','media','DF,Acapulco,Cuernavaca',28,'2005-05-10');
 INSERT INTO viajes (nombre,pension,ciudades,dias,salida)
  VALUES ('Mexico unico','no','Acapulco,Puerto Vallarta',7,'2005-11-15');
 INSERT INTO viajes (nombre,pension,ciudades,dias,salida)
  VALUES ('Mexico DF','no','DF',5,'2005-10-25');
 INSERT INTO viajes (nombre,pension,ciudades,dias,salida)
  VALUES ('Mexico caribeño','completa','Cancun',15,'2005-10-25');

-- 4. Ingrese un registro sin valor para el campo "ciudades":
INSERT INTO viajes (nombre,pension,dias,salida)
  VALUES ('Mexico caribeño','completa',15,'2005-11-27');

-- 5. Seleccione todos los viajes que incluyan "Acapulco":
SELECT * FROM viajes 
WHERE FIND_IN_SET('Acapulco', ciudades);

-- 6. Seleccione todos los viajes que no incluyan "Acapulco" y que incluyan pensión completa:
SELECT * FROM viajes 
WHERE ciudades NOT LIKE '%Acapulco%' AND pension = 'completa';

-- 7. Muestre los viajes que incluyan "Puerto Vallarta" o "Cuernavaca":
SELECT * FROM viajes 
WHERE FIND_IN_SET('Puerto Vallarta', ciudades) 
OR FIND_IN_SET('Cuernavaca', ciudades);
