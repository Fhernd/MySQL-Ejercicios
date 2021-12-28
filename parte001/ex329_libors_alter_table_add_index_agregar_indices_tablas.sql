DROP TABLE IF EXISTS libros;

CREATE TABLE libros(
  codigo INT UNSIGNED,
  titulo VARCHAR(40),
  autor VARCHAR(30),
  editorial VARCHAR (20),
  precio DECIMAL(5,2) UNSIGNED,
  cantidad SMALLINT UNSIGNED
 );

ALTER TABLE libros
  ADD INDEX i_editorial (editorial);

ALTER TABLE libros
  ADD UNIQUE INDEX i_tituloeditorial (titulo,editorial);

SHOW INDEX FROM libros;
