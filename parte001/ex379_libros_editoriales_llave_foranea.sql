DROP TABLE libros, editoriales;

CREATE TABLE libros(
  codigo int UNSIGNED AUTO_INCREMENT,
  titulo VARCHAR(40) NOT NULL,
  autor VARCHAR(30) NOT NULL DEFAULT 'Desconocido',
  codigoeditorial TINYINT UNSIGNED NOT NULL,
  precio DECIMAL(5,2) UNSIGNED,
  cantidad SMALLINT UNSIGNED DEFAULT 0,
  PRIMARY KEY (codigo)
 );

CREATE TABLE editoriales(
  codigo TINYINT UNSIGNED AUTO_INCREMENT,
  nombre VARCHAR(20) NOT NULL,
  PRIMARY KEY(codigo)
 );

INSERT INTO editoriales VALUES (2,'Emece');
INSERT INTO editoriales VALUES (15,'Planeta');
INSERT INTO editoriales VALUES (23,'Paidos');

INSERT INTO libros VALUES (1,'El aleph','Borges',23,4.55,10);
INSERT INTO libros VALUES (2,'Alicia en el pais de las maravillas','Lewis Carroll',2,11.55,2);
INSERT INTO libros VALUES (3,'Martin Fierro','Jose Hernandez',15,7.12,4);


ALTER TABLE libros
  MODIFY codigoeditorial CHAR(1);

SELECT * FROM libros;

SELECT l.titulo,e.nombre
  FROM libros AS l
  JOIN editoriales AS e
  ON l.codigoeditorial=e.codigo;

ALTER TABLE editoriales
  MODIFY codigo CHAR(1);
