DROP TABLE IF EXISTS libros;

CREATE TABLE libros(
  codigo INT UNSIGNED auto_increment,
  titulo VARCHAR(50) NOT NULL,
  autor VARCHAR(30),
  editorial VARCHAR(15),
  precio DECIMAL(5,2) UNSIGNED,
  PRIMARY KEY (codigo)
 );

INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES ('El aleph','Borges','Planeta',15);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES ('Martin Fierro','Jose HernANDez','Emece',22.20);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES ('Antologia poetica','Borges','Planeta',40);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES ('Aprenda PHP','Mario Molina','Emece',18.20);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES ('Cervantes y el quijote','Borges','Paidos',36.40);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES ('Manual de PHP', 'J.C. Paez', 'Paidos',30.80);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES ('Harry Potter y la piedra filosofal','J.K. Rowling','Paidos',45.00);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES ('Harry Potter y la camara secreta','J.K. Rowling','Paidos',46.00);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES ('Alicia en el pais de las maravillas','Lewis Carroll','Paidos', NULL);

SELECT * FROM libros LIMIT 0,4;

SELECT * FROM libros LIMIT 5,4;

SELECT * FROM libros LIMIT 8;

SELECT * FROM libros LIMIT 6,10000;

DELETE FROM libros
  ORDER BY precio
  LIMIT 2;

INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES 'El aleph','Borges','Planeta',15);

INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES 'El aleph','Borges','Planeta',15);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES 'El aleph','Borges','Planeta',15);

SELECT * FROM libros
  WHERE titulo='El aleph' AND
  autor='Borges' AND
  editorial='Planeta';

DELETE FROM libros
  WHERE titulo='El aleph' AND
  autor='Borges' AND
  editorial='Planeta'
  LIMIT 2;

SELECT * FROM libros
  WHERE titulo='El aleph' AND
  autor='Borges' AND
  editorial='Planeta';
