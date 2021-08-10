DROP TABLE IF EXISTS libros;

CREATE TABLE libros(
  codigo INT unsigned auto_increment,
  titulo VARCHAR(20) NOT NULL,
  autor VARCHAR(30),
  editorial VARCHAR(15),
  precio DECIMAL(5,2) unsigned,
  cantidad SMALLINT unsigned,
  PRIMARY KEY (codigo)
 );

describe libros;
