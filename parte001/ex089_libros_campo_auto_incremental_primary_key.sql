DROP TABLE IF EXISTS libros;

CREATE TABLE libros(
  codigo INTEGER auto_increment,
  titulo VARCHAR(50),
  autor VARCHAR(50),
  editorial VARCHAR(25),
  PRIMARY KEY (codigo)
 );

DESCRIBE libros;

INSERT INTO libros (titulo,autor,editorial)
  VALUES('El aleph','Borges','Planeta');

SELECT * FROM libros libros;

INSERT INTO libros (titulo,autor,editorial)
  VALUES('Martin Fierro','Jose Hernandez','Emece');
INSERT INTO libros (titulo,autor,editorial)
  VALUES('Aprenda PHP','Mario Molina','Emece');
INSERT INTO libros (titulo,autor,editorial)
  VALUES('Cervantes y el quijote','Borges','Paidos');
INSERT INTO libros (titulo,autor,editorial)
  VALUES('Matematica estas ahi', 'Paenza', 'Paidos');

SELECT codigo,titulo,autor,editorial FROM libros;

INSERT INTO libros (codigo,titulo,autor,editorial)
  VALUES(6,'Martin Fierro','Jose Hernandez','Paidos');

INSERT INTO libros (codigo,titulo,autor,editorial)
  VALUES(2,'Martin Fierro','Jose Hernandez','Planeta');

INSERT INTO libros (codigo,titulo,autor,editorial)
  VALUES(15,'Harry Potter y la piedra filosofal','J.K. Rowling','Emece');

INSERT INTO libros (titulo,autor,editorial)
  VALUES('Harry Potter y la camara secreta','J.K. Rowling','Emece');

INSERT INTO libros (codigo,titulo,autor,editorial)
  VALUES(0,'Alicia en el pais de las maravillas','Lewis Carroll','Planeta');

INSERT INTO libros (codigo,titulo,autor,editorial)
  VALUES(-5,'Alicia a traves del espejo','Lewis Carroll','Planeta');

SELECT * FROM libros;
