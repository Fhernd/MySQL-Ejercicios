-- 1. Elimine la tabla si existe:
DROP TABLE IF EXISTS peliculas;

-- 2. Créela con la siguiente estructura:
 create table peliculas(
  codigo int(4) zerofill auto_increment,
  titulo varchar(30) not null,
  actor varchar(20),
  duracion tinyint zerofill default 90,
  primary key (codigo)
 );

-- 3. Vea la estructura de la tabla:
DESCRIBE peliculas;
-- note que el atributo "zerofill" aparece en los campos "codigo" y "duracion", en la columna que 
-- describe el tipo de cada dato.

-- 4. Ingrese algunos registros.
INSERT INTO peliculas (titulo, actor) VALUES ('The Matrix Resurrections', 'Keanu Reeves');
INSERT INTO peliculas (titulo, actor, duracion) VALUES ('La Virgen de los sicarios', 'Manuel Busquets', 98);

-- 5. Ingrese un valor de código negativo:
INSERT INTO peliculas (codigo, titulo, actor) VALUES (-2000, 'La vida es bella', 'Roberto Benigni');

-- 6. Ingrese un valor de duración negativo:
INSERT INTO peliculas (titulo, actor, duracion) VALUES ('La lengua de las mariposas', 'Fernando Fernán Gómez', -100);

SELECT * FROM peliculas;
