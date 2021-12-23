DROP TABLE IF EXISTS libros;

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

alter table libros
  drop edicion;

describe libros;

alter table libros
  drop edicion;

alter table libros
  drop editorial, drop cantidad;

alter table libros
  drop codigo;

