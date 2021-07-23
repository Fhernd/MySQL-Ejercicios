-- 1. Elimine la tabla, si existe.
DROP TABLE IF EXISTS peliculas;

-- 2. Cree la tabla eligiendo el tipo de dato adecuado para cada campo:
CREATE TABLE peliculas (
    titulo VARCHAR(20),
    actor VARCHAR(20),
    duracion INTEGER,
    cantidad INTEGER
);

-- 3. Vea la estructura de la tabla:
DESCRIBE peliculas;

-- 4. Ingrese los siguientes registros:
INSERT INTO peliculas (titulo, actor, duracion, cantidad)
  VALUES ('Mision imposible','Tom Cruise',120,3);
INSERT INTO peliculas (titulo, actor, duracion, cantidad)
  VALUES ('Mision imposible 2','Tom Cruise',180,2);
INSERT INTO peliculas (titulo, actor, duracion, cantidad)
  VALUES ('Mujer bonita','Julia R.',90,3);
INSERT INTO peliculas (titulo, actor, duracion, cantidad)
  VALUES ('Elsa y Fred','China Zorrilla',90,2);

-- 5. Seleccione las películas cuya duración no supere los 90 minutos:
SELECT * FROM peliculas 
WHERE duracion <= 90;

-- 6. Seleccione todas las películas en las que el actor no sea 'Tom Cruise':
SELECT * FROM peliculas
WHERE actor <> 'Tom Cruise';

-- 7. Seleccione todas las películas de las que haya más de 2 copias:
SELECT * FROM peliculas 
WHERE cantidad > 2;