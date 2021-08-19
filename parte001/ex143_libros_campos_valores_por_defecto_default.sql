DROP TABLE IF EXISTS libros;

CREATE TABLE libros(
  codigo INT unsigned auto_increment,
  titulo VARCHAR(20) NOT NULL,
  autor VARCHAR(30),
  editorial VARCHAR(15),
  precio DECIMAL(5,2) unsigned,
  cantidad mediumint unsigned NOT NULL,
  PRIMARY KEY(codigo)
 );

INSERT INTO libros (titulo,autor,precio)
  VALUES('El aleph','Borges',23.6);

SELECT * FROM libros;

INSERT INTO libros (autor,editorial,cantidad)
  VALUES('Borges','Planeta',100);

SELECT * FROM libros;
