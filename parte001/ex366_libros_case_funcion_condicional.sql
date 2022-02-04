DROP TABLE IF EXISTS libros;

CREATE TABLE libros(
  codigo INT UNSIGNED AUTO_INCREMENT,
  titulo VARCHAR(40) NOT NULL,
  autor VARCHAR(30),
  editorial VARCHAR(20),
  precio DECIMAL(5,2) UNSIGNED,
  cantidad SMALLINT UNSIGNED,
  PRIMARY KEY(codigo)
 );

INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES ('El aleph','Borges','Planeta',34.5,100);
INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES ('Alicia en el pais de las maravillas','Carroll L.','Paidos',20.7,50);
INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES ('harry Potter y la camara secreta',NULL,'Emece',35,500);
INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES ('Aprenda PHP','Molina Mario','Planeta',54,100);
INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES ('Harry Potter y la piedra filosofal',NULL,'Emece',38,500);
INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES ('Aprenda Java','Molina Mario','Planeta',55,100);
INSERT INTO libros (titulo,autor,editorial,precio,cantidad)
  VALUES ('Aprenda JavaScript','Molina Mario','Planeta',58,150);

SELECT editorial,
  CASE COUNT(*)
   WHEN 1 THEN 1
   ELSE 'mas de 1' END AS 'cantidad'
  FROM libros
  GROUP BY editorial;

SELECT editorial,
  CASE COUNT(*)
   WHEN 1 THEN 1
   END AS 'cantidad'
  FROM libros
  GROUP BY editorial;

SELECT editorial,
  CASE COUNT(*)
   WHEN 1 THEN 1
   WHEN 2 THEN 2
   WHEN 3 THEN 3
  ELSE 'Más de 3' END AS 'cantidad'
  FROM libros
  GROUP BY editorial;

SELECT editorial,
  CASE COUNT(*)
   WHEN 1 THEN 1
   WHEN 2 THEN 2
   WHEN 3 THEN 3
  ELSE 'Más de 3' END AS 'cantidad'
  FROM libros
  GROUP BY editorial
  ORDER BY cantidad;

-- SELECT editorial,
--  CASE COUNT(*)
--   WHEN 1 THEN 1
--   WHEN >1 THEN 'mas de 1'
--  END AS 'cantidad'
--  FROM libros
--  GROUP BY editorial;

SELECT editorial,
  CASE WHEN COUNT(*)=1 THEN 1
       ELSE 'mas de 1'
  END AS 'cantidad'
 FROM libros
 GROUP BY editorial;

