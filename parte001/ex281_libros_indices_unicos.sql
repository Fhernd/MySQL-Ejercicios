DROP TABLE IF EXISTS libros;

CREATE TABLE libros(
  codigo INT UNSIGNED AUTO_INCREMENT,
  titulo VARCHAR(40) NOT NULL,
  autor VARCHAR(30),
  editorial VARCHAR(15),
  CODIGO i_codigo (codigo),
  CODIGO i_tituloeditorial (titulo,editorial)
 );

SHOW INDEX FROM libros;
