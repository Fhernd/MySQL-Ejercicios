-- 1. Elimine la tabla si existe:
DROP TABLE IF EXISTS viajes;

-- 2. Cree la tabla:
 CREATE TABLE viajes(
  codigo INT UNSIGNED AUTO_INCREMENT,
  nombre VARCHAR(50),
  pension ENUM ('no','media','completa') NOT NULL,
  hotel ENUM ('1','2','3','4','5'),/* cantidad de estrellas*/
  dias TINYINT UNSIGNED,
  salida DATE,
  precioporpersona DECIMAL(8,2) UNSIGNED,
  PRIMARY KEY (codigo)
 );

DESCRIBE viajes;

-- 4. Ingrese algunos registros:
 INSERT INTO viajes (nombre,pension,hotel,dias,salida)
  VALUES ('Mexico mágico','completa','4',15,'2005-12-01');
 INSERT INTO viajes (nombre,pension,hotel,dias,salida)
  VALUES ('Europa fantastica','media','5',28,'2005-05-10');
 INSERT INTO viajes (nombre,pension,hotel,dias,salida)
  VALUES ('Caribe especial','no','3',7,'2005-11-25');

-- 5. Intente ingresar un valor "null" para el campo "pension":
-- INSERT INTO viajes (nombre,pension,hotel,dias,salida)
--  VALUES ('Mexico maravilloso',null,'4',15,'2005-12-01');

-- 6. Ingrese valor nulo para el campo "hotel"
 INSERT INTO viajes (nombre,pension,hotel,dias,salida)
  VALUES ('Mexico especial','media',3,18,'2005-11-01');

-- 7. Ingrese un valor inválido, no presente en la lista de "pension" (guarda una cadena vacía):
 INSERT INTO viajes (nombre,pension,hotel,dias,salida)
  VALUES ('Caribe especial','ninguna','4',18,'2005-11-01');

-- 8. Ingrese un valor de índice fuera de rango para el campo "hotel":
 INSERT INTO viajes (nombre,pension,hotel,dias,salida)
  VALUES ('Venezuela única','no',6,18,'2005-11-01');

-- 9. Seleccione todos los viajes que incluyen media pensión:
 SELECT * FROM viajes
  WHERE pension = 2;

-- 10. Seleccione todos los viajes que incluyen un hotel de 4 estrellas:
 SELECT * FROM viajes
  WHERE hotel = '4';
