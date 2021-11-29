DROP TABLE IF EXISTS libros;

CREATE TABLE libros(
  codigo INT UNSIGNED AUTO_INCREMENT,
  titulo VARCHAR(40) NOT NULL,
  autor VARCHAR(30),
  editorial VARCHAR(15),
  precio DECIMAL(5,2) UNSIGNED,
  PRIMARY KEY(codigo)
 );

INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES('El aleph','Borges','Planeta',15.50);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES('Martin Fierro','Jose Hernandez','Emece',22.90);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES('Antologia poetica','J.L. Borges','Planeta',39);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES('Aprenda PHP','Mario Molina','Emece',19.50);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES('Cervantes y el quijote','Bioy Casare- J.L. Borges','Paidos',35.40);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES('Manual de PHP', 'J.C. Paez', 'Paidos',19);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES('Harry Potter y la piedra filosofal','J.K. Rowling','Paidos',45.00);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES('Harry Potter y la camara secreta','J.K. Rowling','Paidos',46.00);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES('Alicia en el pais de las maravillas','Lewis Carroll','Paidos',36.00);

SELECT titulo FROM libros
  WHERE titulo REGEXP 'Ma';

SELECT titulo,autor FROM libros
  WHERE autor REGEXP '[hkw]';

SELECT titulo,autor FROM libros
  WHERE autor NOT REGEXP '[hkw]';

SELECT autor FROM libros
  WHERE autor REGEXP '[a-d]';

SELECT titulo FROM libros
  WHERE titulo REGEXP '^A';

SELECT titulo FROM libros
  WHERE titulo REGEXP 'HP$';

SELECT titulo FROM libros
  WHERE titulo REGEXP 'a.e';

SELECT titulo FROM libros
  WHERE titulo REGEXP 'a..e';

SELECT autor FROM libros
  WHERE autor REGEXP '^......$';

SELECT autor FROM libros
  WHERE autor REGEXP '......';

SELECT titulo FROM libros
  WHERE titulo REGEXP 'a.*a';
