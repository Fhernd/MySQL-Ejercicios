-- 1. Elimine la tabla, si existe:
DROP TABLE IF EXISTS peliculas;
DROP TABLE IF EXISTS films;

-- 2. Cree la tabla "peliculas":
CREATE TABLE peliculas(
  codigo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(40),
  duracion TINYINT UNSIGNED
 );

-- 3. Cambie el nombre de la tabla por "films" con "alter table":
ALTER TABLE peliculas RENAME films;

-- 4. Vea si existen las tablas "peliculas" y "films":
SHOW TABLES;

-- 5. Cambie nuevamente el nombre, de la tabla "films" por "peliculas" usando "rename":
RENAME TABLE films TO peliculas;

-- 6. Vea si existen las tablas:
SHOW TABLES;
