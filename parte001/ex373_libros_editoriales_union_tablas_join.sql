DROP TABLE IF EXISTS libros, editoriales;

CREATE TABLE libros(
  codigo INT UNSIGNED AUTO_INCREMENT,
  titulo VARCHAR(40) NOT NULL,
  autor VARCHAR(30) NOT NULL DEFAULT 'Desconocido',
  codigoeditorial TINYINT UNSIGNED NOT NULL,
  precio DECIMAL(5,2) UNSIGNED,
  cantidad SMALLINT UNSIGNED DEFAULT 0,
  PRIMARY KEY (codigo)
 );

CREATE TABLE editoriales(
  codigo TINYINT UNSIGNED AUTO_INCREMENT,
  nombre VARCHAR(20) NOT NULL,
  direcciON VARCHAR(30) NOT NULL,
  PRIMARY KEY(codigo)
 );

INSERT INTO editoriales (nombre,direccion) VALUES ('Paidos','ColON 190');
INSERT INTO editoriales (nombre,direccion) VALUES ('Emece','Rivadavia 765');
INSERT INTO editoriales (nombre,direccion) VALUES ('Planeta','General Paz 245'); 
INSERT INTO editoriales (nombre,direccion) VALUES ('Sudamericana','9 de Julio 1008');

INSERT INTO libros (titulo, autor,codigoeditorial,precio,cantidad)
  VALUES ('El Aleph','Borges',3,43.5,200);
INSERT INTO libros (titulo, autor,codigoeditorial,precio,cantidad)
  VALUES ('Alicia en el pais de lAS maravillas','Lewis Carroll',2,33.5,100);
INSERT INTO libros (titulo, autor,codigoeditorial,precio,cantidad)
  VALUES ('Aprenda PHP','Mario Perez',1,55.8,50);
INSERT INTO libros (titulo, autor,codigoeditorial,precio,cantidad)
  VALUES ('Java en 10 minutos','Juan Lopez',1,88,150);
INSERT INTO libros (titulo, autor,codigoeditorial,precio,cantidad)
  VALUES ('Alicia a traves del espejo','Lewis Carroll',1,15.5,80);
INSERT INTO libros (titulo, autor,codigoeditorial,precio,cantidad)
  VALUES ('Cervantes y el quijote','Borges- Bioy Casares',3,25.5,300);

SELECT * FROM libros;

SELECT * FROM libros
  JOIN editoriales
  ON libros.codigoeditorial=editoriales.codigo;

SELECT * FROM libros
  JOIN editoriales;

-- SELECT * FROM libros
-- JOIN editoriales
-- ON codigoeditorial=codigo;

SELECT * FROM libros AS l
  JOIN editoriales AS e
  ON l.codigoeditorial=e.codigo;

SELECT titulo,autor,nombre FROM libros AS l
  JOIN editoriales AS e
  ON l.codigoeditorial=e.codigo;

SELECT l.codigo,titulo,autor,nombre FROM libros AS l
  JOIN editoriales AS e
  ON l.codigoeditorial=e.codigo;

-- SELECT codigo,titulo,autor,nombre FROM libros AS l
--  JOIN editoriales AS e
--  ON l.codigoeditorial=e.codigo;

