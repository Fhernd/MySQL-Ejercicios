DROP TABLE IF EXISTS libros;

CREATE TABLE libros(
  codigo INT unsigned auto_increment,
  titulo VARCHAR(20) NOT NULL,
  autor VARCHAR(30),
  editorial VARCHAR(15),
  precio DECIMAL(5,2) unsigned,
  cantidad mediumint unsigned NOT NULL,
  PRIMARY KEY(codigo)
 );

INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES ('Alicia en el pais de las maravillas',555,'Planeta',23.45);

select * from libros;

INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES ('Matematica estas ahi','Paenza','Planeta','abc',20000000);

select * from libros;

INSERT INTO libros (titulo,editorial,precio)
  VALUES ('Alegoria','Planeta',3333.50);

select * from libros;

INSERT INTO libros (titulo,editorial,precio)
  VALUES ('Alegoria','Planeta',33.567);

select * from libros;

INSERT INTO libros (codigo,titulo)
  VALUES (2,'El gato con botas');

select * from libros;

INSERT INTO libros (codigo,titulo)
  VALUES (0,'El gato con botas');
INSERT INTO libros (codigo,titulo)
  VALUES (-5,'Robin Hood');

select * from libros;

INSERT INTO libros (codigo,titulo)
  VALUES (null,'Alicia a traves del espejo');

select * from libros;

INSERT INTO libros (titulo,autor)
  VALUES (null,'Borges');

select * from libros;

INSERT INTO libros (titulo,autor,cantidad)
  VALUES ('Antologia poetica','Borges',null);

select * from libros;

