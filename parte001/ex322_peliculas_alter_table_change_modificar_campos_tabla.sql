-- 1. Elimine la tabla, si existe:
DROP TABLE IF EXISTS peliculas;

-- 2. Cree la tabla con la siguiente estructura:
 CREATE TABLE peliculas(
  codigo INT UNSIGNED,
  nombre VARCHAR(40) NOT NULL,
  actor VARCHAR(20),
  director VARCHAR(25),
  duracion TINYINT UNSIGNED
 );

DESCRIBE peliculas;

-- 3. Cambie el nombre del campo "actor" por "protagonista" y modifíquelo para que permita valores 
-- nulos:
ALTER TABLE peliculas CHANGE actor protagonista VARCHAR(20) NOT NULL;

DESCRIBE peliculas;

-- 4. Cambie el campo "nombre" por "titulo" sin alterar los otros atributos:
ALTER TABLE peliculas CHANGE nombre titulo VARCHAR(40) NOT NULL;

DESCRIBE peliculas;

-- 5. Cambie el nombre del campo "duracion" por "minutos":
ALTER TABLE peliculas CHANGE duracion minutos TINYINT UNSIGNED;

DESCRIBE peliculas;
