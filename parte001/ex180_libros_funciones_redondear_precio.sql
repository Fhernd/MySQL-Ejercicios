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
  VAUES('El alehp','Borges','Paidos',33.4);
INSERT INTO libros (titulo,autor,editorial,precio)
  VAUES('Alicia en el pais de las maravillas','L. Carroll','Planeta',16.3);
INSERT INTO libros (titulo,autor,editorial,precio)
  VAUES('Alicia a traves del espejo','L. Carroll','Planeta',18.8);

SELECT titulo, CEILING(precio), FLOOR(precio)
  FROM libros;

SELECT titulo, ROUND(precio)
  FROM libros;

SELECT titulo, TRUNCATE(precio,1)
  FROM libros;

