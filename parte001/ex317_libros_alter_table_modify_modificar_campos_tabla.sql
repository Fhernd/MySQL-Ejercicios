-- 1. Elimine la tabla, si existe:
DROP TABLE IF EXISTS peliculas;

-- 2. Cree la tabla con la siguiente estructura:
 CREATE TABLE peliculas(
  codigo INT UNSIGNED,
  nombre VARCHAR(20) NOT NULL,
  actor VARCHAR(20),
  director VARCHAR(25),
  duracion TINYINT
 );

DESCRIBE peliculas;

-- 3. Modifique el campo "duracion" por tinyint unsigned:
ALTER TABLE peliculas 
MODIFY duracion TINYINT UNSIGNED;

DESCRIBE peliculas;

-- 4. Modifique el campo "nombre" para poder almacenar una longitud de 40 caracteres y que no permita 
-- valores nulos:
ALTER TABLE peliculas 
MODIFY nombre VARCHAR(40) NOT NULL;

-- 5. Modifique el campo "actor" para que no permita valores nulos:
ALTER TABLE peliculas 
MODIFY actor VARCHAR(40) NOT NULL;

-- 6. Intente definir "auto_increment" el campo "codigo" (mensaje de error):
ALTER TABLE peliculas 
MODIFY codigo INT UNSIGNED AUTO_INCREMENT;
