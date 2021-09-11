DROP TABLE IF EXISTS libros;

CREATE TABLE libros(
  codigo INT UNSIGNED AUTO_INCREMENT,
  titulo VARCHAR(40) NOT NULL,
  autor VARCHAR(30),
  editorial VARCHAR(15),
  precio DECIMAL(5,2) UNSIGNED,
  cantidad SMALLINT UNSIGNED,
  PRIMARY KEY (codigo)
 );

INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES('El alehp','Borges','Paidos',33.4);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES('Alicia en el pais de las maravillas','L. Carroll','Planeta',16);

SELECT CONCAT_WS('-',titulo,autor)
  FROM libros;

SELECT LEFT(titulo,15)
  FROM libros;

SELECT titulo, INSERT(editorial,1,0,'edit. ')
  FROM libros;

SELECT LOWER(titulo), UPPER(editorial)
 FROM libros;
