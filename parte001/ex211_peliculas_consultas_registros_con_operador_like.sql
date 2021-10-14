-- 1. Elimine la tabla, si existe:
DROP TABLE IF EXISTS peliculas;

-- 2. Créela con la siguiente estructura:
CREATE TABLE peliculas (
    codigo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(30) NOT NULL,
    actor VARCHAR(20) NOT NULL,
    duracion TINYINT UNSIGNED NOT NULL
);

-- 3. Visualice la estructura de la tabla "peliculas":
DESCRIBE peliculas;

-- 4. Ingrese los siguientes registros:
 INSERT INTO peliculas (titulo,actor,duracion)
  VALUES('Mision imposible','Tom Cruise',120);
 INSERT INTO peliculas (titulo,actor,duracion)
  VALUES('Harry Potter y la piedra filosofal','Daniel R.',180);
 INSERT INTO peliculas (titulo,actor,duracion)
  VALUES('Harry Potter y la camara secreta','Daniel R.',190);
 INSERT INTO peliculas (titulo,actor,duracion)
  VALUES('Mision imposible 2','Tom Cruise',120);
 INSERT INTO peliculas (titulo,actor,duracion)
  VALUES('Mujer bonita','Richard Gere',120);
 INSERT INTO peliculas (titulo,actor,duracion)
  VALUES('Tootsie','D. Hoffman',90);
 INSERT INTO peliculas (titulo,actor,duracion)
  VALUES('Un oso rojo',null,100);
 INSERT INTO peliculas (titulo,actor,duracion)
  VALUES('Elsa y Fred','China Zorrilla',110);
 INSERT INTO peliculas (titulo,actor,duracion)
  VALUES('Mrs. Johns','Richard Gere',180);

SELECT * FROM peliculas;

-- 5. Actualice el valor del campo "actor" cambiando por 'R. Gere- J. Roberts', de la película cuyo código es 5:
UPDATE peliculas SET actor = 'R. Gere- J. Roberts' WHERE codigo = 5;

SELECT * FROM peliculas;

-- 6. Seleccione todas las películas en las cuales trabaje el actor "Gere". Use "like". (2 registros 
-- seleccionados):
SELECT * FROM peliculas WHERE actor LIKE '%Gere%';

-- 7. Recupere los registros que NO contengan la letra "y" en el título y contenga "ch" en el 
-- campo "actor" (2 registros):
SELECT * FROM peliculas WHERE titulo NOT LIKE '%y%' AND actor LIKE '%ch%';

