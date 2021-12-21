DROP TABLE IF EXISTS libros;

CREATE TABLE libros(
  codigo INT UNSIGNED DEFAULT 0,
  titulo VARCHAR(40),
  autor VARCHAR(30),
  editorial VARCHAR(20),
  precio DECIMAL(5,2) UNSIGNED,
  PRIMARY KEY(codigo)
 );

INSERT INTO libros 
   VALUES (10,'Alicia en el pais de las maravillas','Lewis Carroll','Emece',15.4);
INSERT INTO libros 
   VALUES (15,'Aprenda PHP','Mario Molina','Planeta',45.8);
INSERT INTO libros VALUES (23,'El aleph','Borges','Planeta',23.0);

-- INSERT INTO libros VALUES(23,'Java en 10 minutos','Mario Molina','Emece',25.5);

REPLACE INTO libros VALUES(23,'Java en 10 minutos','Mario Molina','Emece',25.5);

REPLACE INTO libros(titulo,autor,editorial,precio)
  VALUES('Cervantes y el quijote','Borges','Paidos',28);

REPLACE INTO libros VALUES(30,'Matematica estas ahi','Paenza','Paidos',12.8);

ALTER TABLE libros DROP PRIMARY KEY;

REPLACE INTO libros VALUES(10,'Harry Potter ya la piedra filosofal','Hawking','Emece',48);

