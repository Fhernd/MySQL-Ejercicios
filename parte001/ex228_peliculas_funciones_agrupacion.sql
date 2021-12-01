-- 1. Elimine la tabla, si existe:
DROP TABLE IF EXISTS peliculas;

-- 2. Créela con la siguiente estructura:
CREATE TABLE peliculas (
    codigo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(30),
    actor VARCHAR(20),
    duracion TINYINT UNSIGNED
);

-- 3. Ingrese los siguientes registros:
 INSERT INTO peliculas (titulo,actor,duracion)
  VALUES ('Mision imposible','Tom Cruise',120);
 INSERT INTO peliculas (titulo,actor,duracion)
  VALUES ('Harry Potter y la piedra filosofal','Daniel R.',180);
 INSERT INTO peliculas (titulo,actor,duracion)
  VALUES ('Harry Potter y la camara secreta','Daniel R.',190);
 INSERT INTO peliculas (titulo,actor,duracion)
  VALUES ('Mision imposible 2','Tom Cruise',120);
 INSERT INTO peliculas (titulo,actor,duracion)
  VALUES ('Mujer bonita','Richard Gere',120);
 INSERT INTO peliculas (titulo,actor,duracion)
  VALUES ('Tootsie','D. Hoffman',90);
 INSERT INTO peliculas (titulo,actor,duracion)
  VALUES ('Un oso rojo',null,100);
 INSERT INTO peliculas (titulo,actor,duracion)
  VALUES ('Elsa y Fred','China Zorrilla',110);
 INSERT INTO peliculas (titulo,actor,duracion)
  VALUES ('Mrs. Johns','Richard Gere',180);

-- 4. Muestre el valor de duración más grande:
SELECT MAX(duracion) AS duracion_maxima FROM peliculas;

-- 5. Muestre el promedio de duración de las películas:
SELECT AVG(duracion) AS duracion_promedio FROM peliculas;

-- 6. Cuente la cantidad de películas que comiencen con la cadena "Harry Potter":
SELECT COUNT(*) FROM peliculas WHERE titulo LIKE 'Harry Potter%';

-- 7. Un socio alquiló todas las películas en las cuales trabaja "Richard Gere", quiere saber el total 
-- de minutos que duran todas sus películas:
SELECT SUM(duracion) total_duracion FROM peliculas WHERE actor LIKE '%Richard Gere%';
