-- 1. Elimine las tablas, si existen:
DROP TABLE IF EXISTS libros, prestamos;

-- 2. Cree las tablas:
CREATE TABLE libros(
  codigo INT UNSIGNED AUTO_INCREMENT,
  titulo VARCHAR(40),
  autor VARCHAR (30),
  editorial VARCHAR (15),
  PRIMARY KEY (codigo)
 );

CREATE TABLE prestamos(
  codigolibro INT UNSIGNED NOT NULL,
  documento CHAR(8) NOT NULL,
  fechaprestamo DATE NOT NULL,
  fechadevolucion DATE,
  PRIMARY KEY(codigolibro,fechaprestamo)
 );

-- 3. Ingrese algunos registros para ambas tablas:
INSERT INTO libros VALUES (15,'Manual de 1º grado','Moreno Luis','Emece');
INSERT INTO libros VALUES (28,'Manual de 2º grado','Moreno Luis','Emece');
INSERT INTO libros VALUES (30,'Alicia en el pais de las maravillas','Lewis Carroll','Planeta');
INSERT INTO libros VALUES (35,'El aleph','Borges','Emece');

INSERT INTO prestamos
  VALUES(15,'22333444','2006-07-10','2006-07-12');
INSERT INTO prestamos
  VALUES(15,'22333444','2006-07-20','2006-07-21');
INSERT INTO prestamos (codigolibro,documento,fechaprestamo)
  VALUES(15,'23333444','2006-07-25');
INSERT INTO prestamos (codigolibro,documento,fechaprestamo)
  VALUES(30,'23333444','2006-07-28');
INSERT INTO prestamos (codigolibro,documento,fechaprestamo)
  VALUES(28,'25333444','2006-08-10');

-- 4. Muestre todos los datos de los préstamos, incluyendo el nombre del libro (join con "libros"):
SELECT P.*, L.titulo 
FROM prestamos AS P 
JOIN libros AS L 
ON P.codigolibro = L.codigo;

-- 5. Muestre la información de los préstamos del libro "Manual de 1º grado":
SELECT P.*, L.titulo 
FROM prestamos AS P 
JOIN libros AS L 
ON P.codigolibro = L.codigo 
WHERE titulo = 'Manual de 1º grado';

-- 6. Muestre los títulos de los libros, la fecha de préstamo y el documento del socio de todos los 
-- libros que no han sido devueltos:
SELECT L.titulo, P.documento, P.fechaprestamo  
FROM prestamos AS P 
JOIN libros AS L 
ON P.codigolibro = L.codigo 
WHERE fechadevolucion IS NULL;
