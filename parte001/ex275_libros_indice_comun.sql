DROP TABLE IF EXISTS libros;

create table libros(
  codigo INT UNSIGNED AUTO_INCREMENT,
  titulo VARCHAR(40) NOT NULL,
  autor VARCHAR(30),
  editorial VARCHAR(15),
  PRIMARY KEY(codigo),
  INDEX i_editorial (editorial)
 );

SHOW INDEX FROM libros;

DROP TABLE IF EXISTS libros;

create table libros(
  codigo INT UNSIGNED AUTO_INCREMENT,
  titulo VARCHAR(40) NOT NULL,
  autor VARCHAR(30),
  editorial VARCHAR(15),
  PRIMARY KEY(codigo),
  INDEX i_tituloeditorial (titulo,editorial)
 );

SHOW INDEX FROM libros;
