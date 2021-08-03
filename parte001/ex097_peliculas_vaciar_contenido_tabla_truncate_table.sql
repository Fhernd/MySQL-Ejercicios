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

DESCRIBE peliculas;

-- 3. Ingrese los siguientes registros:
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

-- 4. Seleccione todos los registros y verifique la carga automática de los códigos:
SELECT * FROM peliculas;

-- 5. Elimine todos los registros:
DELETE FROM peliculas;

SELECT * FROM peliculas;

-- 6. Ingrese el siguiente registro, sin valor para la clave primaria:
INSERT INTO peliculas (titulo,actor,duracion)
  VALUES('Mujer bonita','Richard Gere',120);

-- 7. Vea los registros para verificar que al generar el valor para "codigo" continuó la secuencia:
SELECT * FROM peliculas;

-- 8. Elimine todos los registros vaciando la tabla:
TRUNCATE TABLE peliculas;

SELECT * FROM peliculas;

-- 9. Ingrese el siguiente registro:
INSERT INTO peliculas (titulo,actor,duracion)
  VALUES('Elsa y Fred','China Zorrilla',90);

-- 10. Muestre el registro ingresado para verificar que inició la secuencia nuevamente para el 
-- campo "codigo":
SELECT * FROM peliculas;
