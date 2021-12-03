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
  VALUES ('Martin Fierro','Jose Hernandez','Emece',22.20);
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

SELECT editorial, COUNT(*) FROM libros
  GROUP BY editorial;

SELECT editorial, COUNT(*) FROM libros
  GROUP BY editorial
  HAVING COUNT(*)>2;

SELECT editorial, AVG(precio)
  FROM libros
  GROUP BY editorial;

SELECT editorial, AVG(precio)
  FROM libros
  GROUP BY editorial
  HAVING AVG(precio)>25;

SELECT editorial, COUNT(*) FROM libros
  WHERE editorial<>'Planeta'
  GROUP BY editorial;

SELECT editorial, COUNT(*) FROM libros
  GROUP BY editorial
  HAVING editorial<>'Planeta';

SELECT editorial, COUNT(*) FROM libros
  WHERE precio is not null
  GROUP BY editorial
  HAVING editorial<>'Planeta';

SELECT editorial, AVG(precio) FROM libros
  GROUP BY editorial
  HAVING COUNT(*) > 2; 

SELECT editorial, MAX(precio)
  FROM libros
  GROUP BY editorial
  HAVING MAX(precio)>=30; 

SELECT editorial, MAX(precio) AS 'mayor'
  FROM libros
  GROUP BY editorial
  HAVING mayor>=30; 
