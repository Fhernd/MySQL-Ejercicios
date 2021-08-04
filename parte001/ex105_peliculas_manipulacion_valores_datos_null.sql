-- 1. Elimine la tabla si existe:
DROP TABLE IF EXISTS peliculas;

-- 2. Créela con la siguiente estructura:
CREATE TABLE peliculas(
    codigo INTEGER AUTO_INCREMENT,
    titulo VARCHAR(30) NOT NULL,
    actor VARCHAR(20),
    duracion INTEGER,
    PRIMARY KEY (codigo)
);

-- 3. Visualice la estructura de la tabla:
DESCRIBE peliculas;

-- 4. Ingrese los siguientes registros:
 INSERT INTO peliculas (titulo,actor,duracion)
  VALUES('Mision imposible','Tom Cruise',120);
 INSERT INTO peliculas (titulo,actor,duracion)
  VALUES('Harry Potter y la piedra filosofal','Daniel R.',180);
 INSERT INTO peliculas (titulo,actor,duracion)
  VALUES('Harry Potter y la camara secreta','Daniel R.',190);
 INSERT INTO peliculas (titulo,actor,duracion)
  VALUES('Mision imposible 2','Tom Cruise',150);
 INSERT INTO peliculas (titulo,actor,duracion)
  VALUES('Titanic','L. Di Caprio',220);
 INSERT INTO peliculas (titulo,actor,duracion)
  VALUES('Mujer bonita','R. Gere-J. Roberts',200);

-- 5. Recupere todos los registros para verificar la carga automática de los códigos:
SELECT * FROM peliculas;

-- 6. Ingrese un registro con valor nulo para el campo clave primaria:
 INSERT INTO peliculas (codigo,titulo,actor,duracion)
  VALUES(null,'Elsa y Fred','China Zorrilla',90);

SELECT * FROM peliculas;

-- 7. Intente ingresar un registro con valor nulo para el campo "titulo". Verifique que no realiza la acción:
-- INSERT INTO peliculas (titulo,actor,duracion)
-- VALUES(NULL,'R. Gere-J. Roberts',200);

-- 8. Ingrese un registro con valor nulo para los campos "actor" y "duracion":
INSERT INTO peliculas (titulo,actor,duracion)
VALUES('Mr. Johns',null,null);

-- Verifique que el registro ha sido ingresado.

SELECT * FROM peliculas;

-- 9. Ingrese un registro con cadenas vacías para los campos varchar y valor 0 para los campos numéricos:
 INSERT INTO peliculas (codigo,titulo,actor,duracion)
  VALUES(0,'','',0);
-- Visualice el registro para ver cómo almacenó MySQL el registro ingresado anteriormente.

SELECT * FROM peliculas;

-- 10. Coloque 120 en la duración de la película cuyo valor de duración sea nulo (1 registro actualizado)
UPDATE peliculas SET duracion = 120 WHERE duracion IS NULL;

SELECT * FROM peliculas;

-- 11. Coloque 'Desconocido' en el campo "actor" en los registros que tengan valor nulo en dicho campo 
-- (1 registro afectado):
UPDATE peliculas SET actor = 'Desconocido' WHERE actor IS NULL;

-- 12. Muestre todos los registros. Note que el cambio anterior no afectó al registro con valor nulo:
SELECT * FROM peliculas;

-- 13. Coloque 'Desconocido' en el campo "actor" en los registros que tengan cadena vacía en dicho 
-- campo (1 registro afectado):
UPDATE peliculas SET actor = 'Desconicido' WHERE actor IS NULL;

SELECT * FROM peliculas;

-- 14. Elimine los registros cuyo título sea una cadena vacía:
DELETE FROM peliculas WHERE titulo = '';

SELECT * FROM peliculas;
