DROP TABLE IF EXISTS libros;

CREATE TABLE libros(
  codigo INT UNSIGNED AUTO_INCREMENT,
  titulo VARCHAR(40) NOT NULL,
  autor VARCHAR(30),
  editorial VARCHAR(30),
  precio DECIMAL(5,2) UNSIGNED,
  PRIMARY KEY (codigo)
 );

INSERT INTO libros (titulo, autor,editorial,precio)
  VALUES ('Alicia en el pais de lAS maravillAS','Lewis Carroll','Paidos',50.5);
INSERT INTO libros (titulo, autor,editorial,precio)
  VALUES ('Alicia a traves del espejo','Lewis Carroll','Emece',25);
INSERT INTO libros (titulo, autor,editorial,precio) 
  VALUES ('El aleph','Borges','Paidos',15);
INSERT INTO libros (titulo, autor,editorial,precio)
  VALUES ('Matemática estAS ahi','Paenza','Paidos',10);
INSERT INTO libros (titulo, autor,editorial)
  VALUES ('Antologia','Borges','Paidos');
INSERT INTO libros (titulo, editorial)
  VALUES ('El gato con botAS','Paidos');
INSERT INTO libros (titulo, autor,editorial,precio)
  VALUES ('Martin Fierro','Jose Hernandez','Emece',90);

SELECT titulo FROM libros
  WHERE precio<50;

SELECT titulo FROM libros
  WHERE precio >=50;

SELECT titulo,
  IF (precio>50,'caro','economico')
  FROM libros;

SELECT autor, COUNT(*)
  FROM libros
  GROUP BY autor;

SELECT autor, COUNT(*)
  FROM libros
  GROUP BY autor
  HAVING COUNT(*)>1;

SELECT autor,
  IF (COUNT(*)>1,'Más de 1','1')
  FROM libros
  GROUP BY autor;

SELECT autor,
  IF (COUNT(*)>1,'Más de 1','1') AS cantidad
  FROM libros
  GROUP BY autor
  ORDER BY cantidad;

SELECT editorial,
  IF (COUNT(*)>4,'5 o más','menos de 5') AS cantidad
  FROM libros
  GROUP BY editorial
  ORDER BY cantidad;
