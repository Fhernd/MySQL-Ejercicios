DROP TABLE IF EXISTS libros;

CREATE TABLE libros(
  codigo INT UNSIGNED AUTO_INCREMENT,
  nombre VARCHAR(30),
  autor VARCHAR(30),
  editorial VARCHAR (20),
  costo DECIMAL(5,2) UNSIGNED,
  cantidad INT UNSIGNED,
  PRIMARY KEY(codigo)
 );

DESCRIBE libros;

ALTER TABLE libros
  CHANGE costo precio DECIMAL (5,2);

ALTER TABLE libros
  CHANGE nombre titulo VARCHAR(40) NOT NULL;

DESCRIBE libros;
