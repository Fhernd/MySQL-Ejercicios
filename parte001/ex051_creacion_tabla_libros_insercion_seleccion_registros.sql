DROP TABLE IF EXISTS libros;

CREATE TABLE libros(
  titulo VARCHAR(20),
  autor VARCHAR(30),
  editorial VARCHAR(15),
  precio FLOAT,
  cantidad INTEGER
);

INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES ('El aleph','Borges','Emece',45.50,100);
INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES ('Alicia en el pais de las maravillas','Lewis Carroll','Planeta',25,200);
INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES ('Matematica estas ahi','Paenza','Planeta',15.8,200);

SELECT * FROM libros;

SELECT titulo,autor,editorial FROM libros; 

SELECT titulo,precio FROM libros;

SELECT editorial,cantidad FROM libros; 
