-- 1. Elimine la tabla, si existe:
DROP TABLE IF EXISTS peliculas;

-- 2. Cree la tabla con la siguiente estructura:
CREATE TABLE peliculas(
  codigo INT UNSIGNED AUTO_INCREMENT,
  nombre VARCHAR(30) NOT NULL,
  actor VARCHAR(20),
  PRIMARY KEY(codigo)
 );

DESCRIBE peliculas;

-- 3. Ingrese algunos registros:
INSERT INTO peliculas VALUES(DEFAULT, 'La virgen de los sicarios', 'Germán Jaramillo');
INSERT INTO peliculas VALUES(DEFAULT, 'La lengua de las mariposas', 'Fernando Fernan');
INSERT INTO peliculas VALUES(DEFAULT, 'Doctor Zhivago', 'Omar Sharif');

-- 4. Agregue un campo para almacenar la duración de la película, de tipo tinyint unsigned:
ALTER TABLE peliculas ADD duracion TINYINT UNSIGNED;

-- 5. Visualice la estructura de la tabla con "describe":
DESCRIBE peliculas;

-- 6. Agregue el campo "director" para almacenar el nombre del director, de tipo VARCHAR(20):
ALTER TABLE peliculas ADD director VARCHAR(20);

-- 7. Visualice la estructura de la tabla con su nuevo campo:
DESCRIBE peliculas;

-- 8. Intente agregar un campo existente. Aparece un mensaje de error:
ALTER TABLE peliculas ADD duracion TINYINT UNSIGNED;