-- 1. Elimine la tabla, si existe:
DROP TABLE IF EXISTS peliculas;

-- 2. Cree la tabla:
CREATE TABLE peliculas(
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

-- 5. Realice un "select" mostrando solamente el título y actor de todas las películas:
SELECT titulo, actor FROM peliculas;

-- 6. Muestre el título y duración de todas las peliculas.
SELECT titulo, duracion FROM peliculas;

-- 7. Muestre el título y la cantidad de copias.
SELECT titulo, cantidad FROM peliculas;