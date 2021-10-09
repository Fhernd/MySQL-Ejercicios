DROP TABLE IF EXSITS libros;

CREATE TABLE libros(
  codigo INT unsigned  auto_increment,
  titulo VARCHAR(40),
  autor VARCHAR(30),
  editorial VARCHAR(15),
  precio DECIMAL(5,2),
  PRIMARY KEY(codigo)
 );

INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES('El aleph','Borges','Planeta',15.50);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES('Martin Fierro','Jose HernANDez','Emece',22.90);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES('Martin Fierro','Jose HernANDez','Planeta',39);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES('Aprenda PHP','Mario Molina','Emece',19.50);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES('Cervantes y el quijote','Borges','Paidos',35.40);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES('Matematica estas ahi', 'Paenza', 'Paidos',19);

SELECT * FROM libros
  WHERE precio>=20 AND
  precio<=40;

SELECT * FROM libros
  WHERE precio BETWEEN 20 AND 40;

SELECT * FROM libros
  WHERE autor='Borges' or
  autor='Paenza';

SELECT * FROM libros
  WHERE autor in('Borges','Paenza');

SELECT * FROM libros
  WHERE autor<>'Borges' AND
  autor<>'Paenza';

SELECT * FROM libros
  WHERE autor not in ('Borges','Paenza');
