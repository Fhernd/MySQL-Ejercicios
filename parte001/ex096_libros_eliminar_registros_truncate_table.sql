DROP TABLE IF EXISTS libros;

CREATE TABLE libros(
  codigo INTEGER auto_increment,
  titulo VARCHAR(50),
  autor VARCHAR(50),
  editorial VARCHAR(25),
  PRIMARY KEY (codigo)
 );

INSERT INTO libros (titulo,autor,editorial)
  VALUES('Martin Fierro','Jose Hernandez','Planeta');
INSERT INTO libros (titulo,autor,editorial)
  VALUES('Aprenda PHP','Mario Molina','Emece');
INSERT INTO libros (titulo,autor,editorial)
  VALUES('Cervantes y el quijote','Borges','Paidos');
INSERT INTO libros (titulo,autor,editorial)
  VALUES('Matematica estas ahi', 'Paenza', 'Paidos');
INSERT INTO libros (titulo,autor,editorial)
  VALUES('El aleph', 'Borges', 'Emece');

DELETE FROM libros;

SELECT * FROM libros;

INSERT INTO libros (titulo,autor,editorial)
  VALUES('Antología poetica', 'Borges', 'Emece');

SELECT * FROM libros;

TRUNCATE TABLE libros;

INSERT INTO libros (titulo,autor,editorial)
  VALUES('Antología poetica', 'Borges', 'Emece');

SELECT * FROM libros;
