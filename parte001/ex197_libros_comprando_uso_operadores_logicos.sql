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
  VALUES('Martin Fierro','Jose Hernandez','Emece',22.90);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES('Martin Fierro','Jose Hernandez','Planeta',39);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES('Aprenda PHP','Mario Molina','Emece',19.50);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES('Cervantes y el quijote','Borges','Paidos',35.40);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES('Matematica estas ahi', 'Paenza', 'Paidos',19);


SELECT * FROM libros
  WHERE autor='Borges' AND
  precio<=20;

SELECT * FROM libros
  WHERE autor='Paenza' OR
  editorial='Planeta';


SELECT * FROM libros
  WHERE (autor='Borges') XOR
  (editorial='Planeta');

SELECT * FROM libros
  WHERE not (editorial='Planeta');

SELECT * FROM libros
  WHERE (autor='Borges') OR
  (editorial='Paidos' AND precio<20);

SELECT * FROM libros
  WHERE (autor='Borges' OR editorial='Paidos')
  AND (precio<20);



