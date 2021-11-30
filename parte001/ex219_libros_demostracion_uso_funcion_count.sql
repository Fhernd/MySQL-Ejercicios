DROP TABLE IF EXISTS libros;

CREATE TABLE libros(
  codigo INT UNSIGNED AUTO_INCREMENT,
  titulo VARCHAR(40) NOT NULL,
  autor VARCHAR(30),
  editorial VARCHAR(15),
  precio DECIMAL(5,2) UNSIGNED,
  cantidad MEDIUMINT UNSIGNED,
  PRIMARY KEY(codigo)
 );

INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES('El aleph','Borges','Planeta',15,100);
INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES('Martin Fierro','Jose Hernandez','Emece',22.20,200);
INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES('Antologia poetica','J.L. Borges','Planeta',40,150);
INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES('Aprenda PHP','Mario Molina','Emece',18.20,200);
INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES('Cervantes y el quijote','Bioy Casares- J.L. Borges','Paidos',36.40,100);
INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES('Manual de PHP', 'J.C. Paez', 'Paidos',30.80,120);
INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES('Harry Potter y la piedra filosofal','J.K. Rowling','Paidos',45.00,50);
INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES('Harry Potter y la camara secreta','J.K. Rowling','Paidos',46.00,100);
INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES('Alicia en el pais de las maravillas','Lewis Carroll','Paidos', NULL,200);

SELECT COUNT(*) FROM libros;

SELECT COUNT(*) FROM libros
  WHERE editorial='Planeta';

SELECT COUNT(*) FROM libros WHERE autor LIKE '%Borges%';

SELECT COUNT(precio) FROM libros;
