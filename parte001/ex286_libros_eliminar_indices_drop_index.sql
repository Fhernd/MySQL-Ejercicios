DROP TABLE IF EXISTS libros;

CREATE TABLE libros(
  codigo INT unsigned auto_increment,
  titulo VARCHAR(40) NOT NULL,
  autor VARCHAR(30),
  editorial VARCHAR(15),
  PRIMARY KEY (codigo),
  INDEX i_editorial (editorial),
  UNIQUE i_tituloeditorial (titulo,editorial)
 );

SHOW INDEX FROM libros;

DROP INDEX i_editorial ON libros;

DROP INDEX i_tituloeditorial ON libros;

SHOW INDEX FROM libros;
