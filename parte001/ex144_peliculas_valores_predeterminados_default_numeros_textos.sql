-- 1. Elimine la tabla si existe:
DROP TABLE IF EXISTS peliculas;

-- 2. Créela con la siguiente estructura:
CREATE TABLE peliculas(
    codigo INT UNSIGNED AUTO_INCREMENT,
    titulo VARCHAR(30) NOT NULL,
    actor VARCHAR(20),
    duracion TINYINT UNSIGNED,
    PRIMARY KEY (codigo)
);

DESCRIBE peliculas;

-- 3. Agregue los siguientes registros para ver cómo guarda MySQL los valores no ingresados:
 INSERT INTO peliculas (titulo,actor,duracion)
  VALUES('Mision imposible','Tom Cruise',120);
 INSERT INTO peliculas (codigo,duracion)
  VALUES(5,90);
 INSERT INTO peliculas (titulo,actor)
  VALUES('Harry Potter y la piedra filosofal','Daniel R.');
 INSERT INTO peliculas (titulo,actor,duracion)
  VALUES('Harry Potter y la piedra filosofal','Daniel R.',120);

-- 4- Seleccione todos los datos de las películas para ver cómo guardó MySQL los valores no 
-- ingresados. En el primer registro ingresado, en el campo "codigo" ingresará "1", el primer valor 
-- para campos "auto_increment". En el segundo registro ingresado se almacena una cadena vacía para
-- el título y el valor "null" para el actor. En el tercer registro guarda "6" en "codigo", el 
-- siguiente valor de la secuencia tomando el valor más alto y en "duracion" almacena "0". En el 
-- cuarto registro sigue la secuencia del código.
