DROP TABLE IF EXISTS libros;

CREATE TABLE libros(
  codigo INT UNSIGNED AUTO_INCREMENT,
  titulo VARCHAR(40) NOT NULL,
  autor VARCHAR(30),
  editorial VARCHAR(15),
  precio DECIMAL(5,2) UNSIGNED,
  cantidad SMALLINT UNSIGNED,
  PRIMARY KEY (codigo)
 );

INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES('El aleph','Borges','Planeta',15,100);
INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES('Martin Fierro','Jose Hernandez','Emece',22.20,200);
INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES('Antologia poetica','Borges','Planeta',40,150);
INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES('Aprenda PHP','Mario Molina','Emece',18.20,200);
INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES('Cervantes y el quijote','Borges','Paidos',36.40,100);
INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES('Manual de PHP', 'J.C. Paez', 'Paidos',30.80,100);
INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES('Harry Potter y la piedra filosofal','J.K. Rowling','Paidos',45.00,500);
INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES('Harry Potter y la camara secreta','J.K. Rowling','Paidos',46.00,300);
INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES('Alicia en el pais de las maravillas','Lewis Carroll','Paidos',null,50);


SELECT titulo, precio,cantidad,precio*cantidad
  FROM libros;

SELECT titulo, precio,precio*0.1,precio-(precio*0.1)
  FROM libros;
