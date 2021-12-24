DROP TABLE IF EXISTS libros;

CREATE TABLE libros(
  codigo INT UNSIGNED,
  titulo VARCHAR(30) NOT NULL,
  autor VARCHAR(30),
  editorial VARCHAR (20),
  precio DECIMAL(5,2) UNSIGNED,
  cantidad INT UNSIGNED
 );

ALTER TABLE libros
  MODIFY cantidad SMALLINT UNSIGNED;

DESCRIBE libros;

ALTER TABLE libros
  MODIFY titulo VARCHAR(40) NOT NULL;

DESCRIBE libros;

INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES ('El aleph','Borges','Planeta',23.5,100);
INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES ('Alicia en el pais de las maravillas','Lewis Carroll','Emece',25,200);
INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES ('El gato con botas',NULL,'Emece',10,500);
INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES ('Martin Fierro','Jose Hernandez','Planeta',150,200);

ALTER TABLE libros
  MODIFY autor VARCHAR(10);

SELECT * FROM libros;

ALTER TABLE libros
  MODIFY autor VARCHAR(10) NOT NULL;

SELECT * FROM libros;

ALTER TABLE libros
  MODIFY precio DECIMAL(4,2);

SELECT * FROM libros;

ALTER TABLE libros
  MODIFY codigo INT UNSIGNED AUTO_INCREMENT;

