DROP TABLE IF EXISTS libros;

CREATE TABLE libros(
  codigo INT UNSIGNED auto_increment,
  titulo VARCHAR(40) NOT NULL,
  editorial VARCHAR(15),
  autor VARCHAR(30) DEFAULT 'Desconocido',
  precio DECIMAL(5,2) UNSIGNED DEFAULT 1.11,
  cantidad MEDIUMINT UNSIGNED NOT NULL,
  PRIMARY KEY (codigo)
 );

INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  values('Java en 10 minutos','Juan Pereyra','Paidos',25.7,100);

INSERT INTO libros (autor,editorial,precio,cantidad)
  values('Juan Perez','Planeta',28.50,50);

INSERT INTO libros (titulo,autor,precio,cantidad)
  values('Aprenda PHP','Alberto Lopez',55.40,150);

INSERT INTO libros (titulo,editorial,precio,cantidad)
  values ('El gato con botas','Emece',15.6,150);

INSERT INTO libros (titulo,autor,editorial,cantidad)
  values ('El aleph','Borges','Emece',200);

INSERT INTO libros (titulo,autor,editorial,precio)
  values('Alicia a traves del espejo','Lewis Carroll', 'Emece',34.5);

INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  values ('El gato con botas',DEFAULT,'Planeta',DEFAULT,100);

SELECT * FROM libros;
