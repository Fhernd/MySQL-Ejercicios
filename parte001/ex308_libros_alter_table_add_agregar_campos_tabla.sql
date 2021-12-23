DROP TABLE IF EXISTS libros;

CREATE TABLE libros(
  codigo INT UNSIGNED AUTO_INCREMENT,
  titulo VARCHAR(40) NOT NULL,
  autor VARCHAR(30),
  editorial VARCHAR (20),
  precio DECIMAL(5,2) UNSIGNED,
  PRIMARY KEY(codigo)
 );

ALTER TABLE libros
  ADD cantidad SMALLINT UNSIGNED NOT NULL;

DESCRIBE libros;

ALTER TABLE libros
  ADD edicion DATE;

DESCRIBE libros;

ALTER TABLE libros
  ADD precio int;
