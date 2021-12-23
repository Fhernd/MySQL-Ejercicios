ESCDROP TABLE IF EXISTS libros;

CREATE TABLE libros(
  codigo INT UNSIGNED AUTO_INCREMENT,
  titulo VARCHAR(40) NOT NULL,
  autor VARCHAR(30),
  editorial VARCHAR (20),
  edicion DATE,
  precio DECIMAL(5,2) UNSIGNED,
  cantidad int UNSIGNED,
  PRIMARY KEY(codigo)
 );

ALTER TABLE libros
  DROP edicion;

DESCRIBE libros;

ALTER TABLE libros
  DROP edicion;

ALTER TABLE libros
  DROP editorial, DROP cantidad;

ALTER TABLE libros
  DROP codigo;
