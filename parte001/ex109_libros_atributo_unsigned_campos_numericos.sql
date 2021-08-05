DROP TABLE IF EXISTS libros;

CREATE TABLE libros(
  codigo INTEGER unsigned auto_increment,
  titulo VARCHAR(50) NOT NULL,
  autor VARCHAR(50),
  editorial VARCHAR(25),
  precio FLOAT unsigned,
  cantidad INTEGER unsigned,
  PRIMARY KEY (codigo)
 );

DESCRIBE libros;
