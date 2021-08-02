-- 1. Elimine la tabla si existe:
DROP TABLE IF EXISTS peliculas;

-- 2. Créela con la siguiente estructura:
CREATE TABLE peliculas(
    codigo INTEGER AUTO_INCREMENT,
    titulo VARCHAR(30),
    actor VARCHAR(20),
    duracion INTEGER,
    PRIMARY KEY (codigo)
);

-- 3. Visualice la estructura de la tabla "peliculas":
DESCRIBE peliculas;

-- 4. Ingrese los siguientes registros:
 INSERT INTO peliculas (titulo,actor,duracion)
  VALUES('Mision imposible','Tom Cruise',120);
 INSERT INTO peliculas (titulo,actor,duracion)
  VALUES('Harry Potter y la piedra filosofal','xxx',180);
 INSERT INTO peliculas (titulo,actor,duracion)
  VALUES('Harry Potter y la camara secreta','xxx',190);
 INSERT INTO peliculas (titulo,actor,duracion)
  VALUES('Mision imposible 2','Tom Cruise',120);
 INSERT INTO peliculas (titulo,actor,duracion)
  VALUES('La vida es bella','zzz',220);

-- 5. Seleccione todos los registros y verifique la carga automática de los códigos:
SELECT * FROM peliculas;

-- 6. Actualice las películas cuyo código es 3 colocando en "actor" 'Daniel R.':
UPDATE peliculas SET actor = 'Daniel R.' WHERE codigo = 3;

SELECT * FROM peliculas;

-- 7. Elimine la película 'La vida es bella':
DELETE FROM peliculas WHERE titulo = 'La vida es bella';

SELECT * FROM peliculas;

-- 8. Elimine todas las películas cuya duración sea igual a 120 minutos:
DELETE FROM peliculas WHERE duracion = 120;

-- 9. Visualice los registros:
SELECT * FROM peliculas;

-- 10. Ingrese el siguiente registro, sin valor para la clave primaria:
-- (Note que sigue la secuencia tomando el último valor generado, aunque ya no esté.)
 INSERT INTO peliculas (titulo,actor,duracion)
  VALUES('Mujer bonita','Richard Gere',120);

SELECT * FROM peliculas;

-- 11. ngrese el siguiente registro, con valor para la clave primaria:
-- (Lo acepta porque la clave no está repetida.)
 INSERT INTO peliculas (codigo,titulo,actor,duracion)
  VALUES(1,'Tootsie','D. Hoffman',90);

SELECT * FROM peliculas;

-- 12. Intente ingresar un registro con valor de clave repetida.
-- INSERT INTO peliculas (codigo,titulo,actor,duracion)
-- VALUES(1,'Tootsie','D. Hoffman',90);

SELECT * FROM peliculas;

-- 13. Ingrese el siguiente registro, sin valor para la clave primaria:
-- (Note que sigue la secuencia.)
 INSERT INTO peliculas (titulo,actor,duracion)
  VALUES('Un oso rojo','Julio Chavez',100);

SELECT * FROM peliculas;
