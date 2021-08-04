DROP TABLE IF EXISTS libros;

CREATE TABLE libros(
  codigo INTEGER auto_increment,
  titulo VARCHAR(50) NOT NULL,
  autor VARCHAR(50),
  editorial VARCHAR(25),
  precio FLOAT,
  PRIMARY KEY(codigo)
 );

INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES('El aleph','Borges','Planeta',NULL);

INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES ('Matematica estas ahi','Paenza','Paidos',0);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES ('Martin Fierro','Jose Hernandez','',22.50);

INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES ('Harry Potter y la piedra filosofal', 'J.K. Rowling',NULL,30.00);

SELECT * FROM libros
  WHERE precio IS NULL;

SELECT * FROM libros
  WHERE precio=0;


SELECT * FROM libros
  WHERE editorial IS NULL;
SELECT *FROM libros
  WHERE editorial='';
