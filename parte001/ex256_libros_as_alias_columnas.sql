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
  VALUES ('Martin Fierro','Jose Hernandez','Planeta',42.20);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES ('Antologia poetica','Borges','Planeta',40);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES ('Aprenda PHP','Mario Molina','Emece',18.20);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES ('Cervantes y el quijote','Bioy CASares- Borges','Paidos',36.40);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES ('Manual de PHP', null, 'Paidos',30.80);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES ('Harry Potter y la piedra filosofal','J.K. Rowling','Planeta',45.00);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES ('Harry Potter y la camara secreta','J.K. Rowling','Planeta',46.00);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES ('Alicia en el pais de lAS maravillAS','Lewis Carroll','Paidos',NULL);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES ('Alicia en el pais de lAS maravillAS','Lewis Carroll','Emece',12.10);

SELECT COUNT(*) AS 'Libros de Borges'
  FROM libros
  WHERE autor LIKE '%Borges%';

SELECT editorial AS edit
  FROM libros
  GROUP BY edit;

SELECT editorial, COUNT(*) AS cantidad
  FROM libros
  GROUP BY editorial
  ORDER BY cantidad;

SELECT editorial, COUNT(*) AS cantidad
  FROM libros
  GROUP BY editorial
  HAVING cantidad>2;
