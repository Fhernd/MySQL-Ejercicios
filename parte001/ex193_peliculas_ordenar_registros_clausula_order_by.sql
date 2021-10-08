-- 1. Elimine la tabla, si existe:
DROP TABLE IF EXISTS peliculas;

-- 2. Créela con la siguiente estructura:
CREATE TABLE peliculas(
    codigo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(40) NOT NULL,
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
  VALUES('Un oso rojo','Julio Chavez',100);

-- 5. Ordene los registros por el campo "actor":
SELECT * FROM peliculas ORDER BY actor;

-- 6. Muestre las películas ordenadas por la duración, de mayor a menor:
SELECT * FROM peliculas ORDER BY duracion DESC;
