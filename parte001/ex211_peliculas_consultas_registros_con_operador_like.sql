-- 1. Elimine la tabla, si existe:
DROP TABLE IF EXISTS peliculas;

-- 2. Créela con la siguiente estructura:
CREATE TABLE peliculas (
    codigo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(30),
    actor VARCHAR(20),
    duracion TINYINT UNSIGNED
);

-- 3. Visualice la estructura de la tabla "peliculas":
DESCRIBE peliculas;

-- 4. Ingrese los siguientes registros:
 insert into peliculas (titulo,actor,duracion)
  values('Mision imposible','Tom Cruise',120);
 insert into peliculas (titulo,actor,duracion)
  values('Harry Potter y la piedra filosofal','Daniel R.',180);
 insert into peliculas (titulo,actor,duracion)
  values('Harry Potter y la camara secreta','Daniel R.',190);
 insert into peliculas (titulo,actor,duracion)
  values('Mision imposible 2','Tom Cruise',120);
 insert into peliculas (titulo,actor,duracion)
  values('Mujer bonita','Richard Gere',120);
 insert into peliculas (titulo,actor,duracion)
  values('Tootsie','D. Hoffman',90);
 insert into peliculas (titulo,actor,duracion)
  values('Un oso rojo',null,100);
 insert into peliculas (titulo,actor,duracion)
  values('Elsa y Fred','China Zorrilla',110);
 insert into peliculas (titulo,actor,duracion)
  values('Mrs. Johns','Richard Gere',180);

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

-- 8. Seleccione las películas que comiencen con "M" y cuya duración sea menor a 150 (3 registros):
SELECT * FROM peliculas WHERE titulo NOT LIKE 'm%' AND duracion < 150;

-- 9. Cambie el valor de la duración a 100 en las películas en las cuales el campo "actor" comience 
-- con "D":
UPDATE peliculas SET duracion = 100 WHERE actor LIKE 'D%';

SELECT * FROM peliculas;

-- 10. Recupere los registros que cumplan la condición del punto anterior, para verificar el cambio de 
-- la duración:
SELECT * FROM peliculas WHERE actor LIKE 'D%';

-- 11. Vea si existen películas con títulos nulos:
SELECT * FROM peliculas WHERE titulo LIKE NULL;

-- 12. Vea si existen películas con valor nulo en el campo "actor"
SELECT * FROM peliculas WHERE actor LIKE NULL;
