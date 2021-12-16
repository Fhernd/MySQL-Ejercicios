DROP TABLE IF EXISTS libros;

CREATE TABLE libros(
  codigo INT unsigned auto_increment,
  titulo VARCHAR(40),
  autor VARCHAR(30),
  editorial VARCHAR(20),
  precio decimal(5,2) unsigned,
  primary key(codigo)
 );

INSERT INTO libros VALUES (1,'El aleph','Borges','Planeta',23.5);
INSERT INTO libros VALUES (2,'Cervantes y el quijote','Borges','Paidos',33.5);
INSERT INTO libros 
   VALUES (3,'Alicia a traves del espejo','Lewis Carroll','Planeta',15);
INSERT INTO libros 
   VALUES (4,'Alicia en el pais de las maravillas','Lewis Carroll','Planeta',18);
INSERT INTO libros VALUES (5,'Martin Fierro','Jose Hernandez','Planeta',34.6);
INSERT INTO libros VALUES (6,'Martin Fierro','Jose Hernandez','Emece',45);
INSERT INTO libros VALUES (7,'Aprenda PHP','Mario Molina','Planeta',55);
INSERT INTO libros VALUES (8,'Java en 10 minutos','Mario Molina','Planeta',45);
INSERT INTO libros VALUES (9,'Matematica estas ahi','Paenza','Planeta',12.5);

SELECT * FROM libros ORDER BY RAND() LIMIT 5;

SELECT * FROM libros ORDER BY RAND() LIMIT 5;
SELECT * FROM libros ORDER BY RAND() LIMIT 5;
SELECT * FROM libros ORDER BY RAND() LIMIT 5;
