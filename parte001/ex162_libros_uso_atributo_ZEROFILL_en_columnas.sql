DROP TABLE IF EXISTS libros;

CREATE TABLE libros(
  codigo INT(6) ZEROFILL AUTO_INCREMENT,
  titulo VARCHAR(40) NOT NULL,
  autor VARCHAR(30),
  editorial VARCHAR(15),
  precio decimal(5,2) UNSIGNED,
  cantidad smallint ZEROFILL,
  primary key (codigo)
 );

DESCRIBE libros;

INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES('Martin Fierro','Jose Hernandez','Planeta',34.5,200);
INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES('Aprenda PHP','Mario Molina','Emece',45.7,50);
INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES('Cervantes y el quijote','Borges','Paidos',23,40);

SELECT * FROM libros;

INSERT INTO libros (codigo,titulo,autor,editorial,precio,cantidad)
  VALUES('545','El aleph', 'Borges', 'Emece',33,20);

SELECT * FROM libros;

INSERT INTO libros (codigo,titulo,autor,editorial,precio,cantidad)
  VALUES(-400,'Matematica estas ahi', 'Paenza', 'Paidos',15.2,-100);

SELECT * FROM libros;


