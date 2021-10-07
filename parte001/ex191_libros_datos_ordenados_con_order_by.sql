DROP TABLE IF EXISTS libros;

CREATE TABLE libros(
  codigo INT unsigned auto_increment,
  titulo VARCHAR(40),
  autor VARCHAR(30),
  editorial VARCHAR(15),
  precio DECIMAL (5,2) UNSIGNED,
  PRIMARY KEY (codigo)
 );

INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES('El aleph','Borges','Planeta',15.50);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES('Martin Fierro','Jose Hernandez','Emece',22.90);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES('Martin Fierro','Jose Hernandez','Planeta',39);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES('Aprenda PHP','Mario Molina','Emece',19.50);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES('Cervantes y el quijote','Borges','Paidos',35.40);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES('Matematica estas ahi', 'Paenza', 'Paidos',19);

SELECT codigo,titulo,autor,editorial,precio
  FROM libros
  ORDER BY titulo;

SELECT codigo,titulo,autor,editorial,precio
 FROM libros
 ORDER BY 5;

SELECT codigo,titulo,autor,editorial,precio
  FROM libros
  ORDER BY titulo, editorial;

SELECT codigo,titulo,autor,editorial,precio
  FROM libros
  ORDER BY titulo ASC, editorial DESC;
