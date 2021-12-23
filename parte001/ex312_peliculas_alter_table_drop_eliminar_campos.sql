-- 1. Elimine la tabla, si existe:
DROP TABLE IF EXISTS peliculas;

-- 2. Cree la tabla con la siguiente estructura:
CREATE TABLE peliculas(
  codigo INT UNSIGNED AUTO_INCREMENT,
  nombre VARCHAR(30) NOT NULL,
  protagonista VARCHAR(20),
  actorsecundario VARCHAR(20),
  director VARCHAR(25),
  duracion TINYINT UNSIGNED,
  PRIMARY KEY(codigo),
  INDEX i_director (director)
 );

-- 3. Ingrese algunos registros:
INSERT INTO peliculas VALUES (DEFAULT, 'La virgen de los sicarios', 'Germán Jaramillo', 'Germán Jaramillo', 'Director 1', 120);
INSERT INTO peliculas VALUES (DEFAULT, 'La lengua de las mariposas', 'Fernando Fernan', 'Fernando Fernan', 'Director 2', 140);
INSERT INTO peliculas VALUES (DEFAULT, 'Doctor Zhivago', 'Omar Sharif', 'Omar Sharif', 'Director 3', 150);

-- 4. Vea los índices:
SHOW INDEX FROM peliculas;

DESCRIBE peliculas;

-- 5. Elimine el campo "director":
ALTER TABLE peliculas DROP director;

-- 6. Visualice la estructura modificada:
DESCRIBE peliculas;

-- 7. Vea los índices:
SHOW INDEX FROM peliculas;

-- 8. Intente eliminar un campo inexistente. Aparece un mensaje de error:
-- ALTER TABLE peliculas DROP director;

-- 9. Elimine los campos "actorsecundario" y "duracion" en una misma sentencia:
ALTER TABLE peliculas DROP actorsecundario, DROP duracion;

DESCRIBE peliculas;