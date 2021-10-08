-- 1. Elimine la tabla, si existe:
DROP TABLE IF EXISTS peliculas;

-- 2. Créela con la siguiente estructura:
CREATE TABLE peliculas (
    codigo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(30) NOT NULL,
    actor VARCHAR(20) NOT NULL,
    duracion TINYINT UNSIGNED NOT NULL
);

-- 3. Ingrese los siguientes registros:
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
  VALUES('Un oso rojo','Julio Chavez',100);
 INSERT INTO peliculas (titulo,actor,duracion)
  VALUES('Elsa y Fred','China Zorrilla',110);


-- 4. Recupere los registros cuyo actor sea "Tom Cruise" or "Richard Gere". (3 registros):
SELECT * FROM peliculas WHERE actor = 'Tom Cruise' OR actor = 'Richard Gere';

-- 5. Recupere los registros cuyo actor sea "Tom Cruise" y "Richard Gere":
SELECT * FROM peliculas WHERE actor = 'Tom Cruise' AND actor = 'Richard Gere';

-- 6. Cambie la duración a 200, de las películas cuyo actor sea "Daniel R." y cuya duración sea 180. 
-- (1 registro afectado):
UPDATE peliculas SET duracion = 200 WHERE actor = 'Daniel R.' AND duracion = 180;

-- 8. Borre todas las películas donde el actor NO sea "Tom Cruise" y cuya duración sea mayor o igual a 
-- 100:
DELETE FROM peliculas WHERE NOT (actor = 'Tom Cruise') AND duracion >= 100;
