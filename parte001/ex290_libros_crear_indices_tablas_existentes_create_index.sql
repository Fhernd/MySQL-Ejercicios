DROP TABLE IF EXISTS libros;

CREATE TABLE libros(
  codigo INT UNSIGNED AUTO_INCREMENT,
  titulo VARCHAR(40) NOT NULL,
  autor VARCHAR(30),
  editorial VARCHAR(15),
  PRIMARY KEY (codigo)
 );

SHOW INDEX FROM libros;

CREATE INDEX i_editorial ON libros (editorial);

SHOW INDEX FROM libros;

CREATE UNIQUE INDEX i_tituloeditorial ON libros (titulo,editorial);

SHOW INDEX FROM libros;
