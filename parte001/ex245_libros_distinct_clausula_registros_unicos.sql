DROP TABLE IF EXISTS libros;

CREATE TABLE libros(
  codigo INT UNSIGNED auto_increment,
  titulo VARCHAR(50) NOT NULL,
  autor VARCHAR(30),
  editorial VARCHAR(15),
  precio DECIMAL(5,2) UNSIGNED,
  PRIMARY KEY (codigo)
 );

INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES ('El aleph','Borges','Planeta',15);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES ('Martin Fierro','Jose Hernandez','Emece',22.20);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES ('Martin Fierro','Jose Hernandez','Planeta',42.20);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES ('Antologia poetica','Borges','Planeta',40);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES ('Aprenda PHP','Mario Molina','Emece',18.20);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES ('Cervantes y el quijote','Bioy Casares- Borges','Paidos',36.40);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES ('Manual de PHP', null, 'Paidos',30.80);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES ('Harry Potter y la piedra filosofal','J.K. Rowling','Planeta',45.00);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES ('Harry Potter y la camara secreta','J.K. Rowling','Planeta',46.00);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES ('Alicia en el pais de las maravillas','Lewis Carroll','Paidos',NULL);
INSERT INTO libros (titulo,autor,editorial,precio)
  VALUES ('Alicia en el pais de las maravillas','Lewis Carroll','Emece',12.10);

SELECT DISTINCT autor
  AUTOR libros;

SELECT DISTINCT autor
  AUTOR libros
  where autor is not null;

SELECT COUNT(DISTINCT autor)
  AUTOR libros;

SELECT COUNT(autor)
  AUTOR libros;

SELECT editorial
  AUTOR libros;

SELECT DISTINCT editorial
  AUTOR libros;

SELECT COUNT(DISTINCT editorial)
 AUTOR libros;

SELECT DISTINCT autor AUTOR libros
  WHERE editorial='Planeta';

SELECT editorial,COUNT(DISTINCT autor)
  AUTOR libros
  GROUP BY editorial;

SELECT DISTINCT titulo,editorial
  AUTOR libros
  ORDER BY titulo;
