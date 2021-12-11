-- 1. Elimine la tabla, si existe:
DROP TABLE IF EXISTS peliculas;

-- 2. Créela con la siguiente estructura:
-- - codigo (entero sin signo, autoincrementable),
-- - titulo (cadena de 30), not null,
-- - actor (cadena de 20),
-- - duracion (entero sin signo no mayor a 200 aprox.),
-- - clave primaria (codigo).
CREATE TABLE peliculas (
    codigo INT UNSIGNED AUTO_INCREMENT,
    titulo VARCHAR(30) NOT NULL,
    actor VARCHAR(20),
    duracion TINYINT UNSIGNED,
    PRIMARY KEY (codigo)
);

-- 3. Ingrese 10 registros:
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
  VALUES ('Un oso rojo', NULL,100);
 INSERT INTO peliculas (titulo,actor,duracion)
  VALUES ('Elsa y Fred','China Zorrilla',110);
 INSERT INTO peliculas (titulo,actor,duracion)
  VALUES ('Mrs. Johns','Richard Gere',180);

-- 4. Realice una consulta limitando la salida a sólo 5 registros:
SELECT * FROM peliculas LIMIT 5;

-- 5. Muestre los registros desde el cero al 8 usando un solo argumento:
SELECT * FROM peliculas LIMIT 8;

-- 6. Muestre 3 registros a partir del 4:
SELECT * FROM peliculas LIMIT 4, 3;

-- 7. Muestre los registros a partir del 2 hasta el final:
SELECT * FROM peliculas LIMIT 2, 1000000;