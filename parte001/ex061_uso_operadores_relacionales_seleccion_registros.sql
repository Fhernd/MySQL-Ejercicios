-- 1. Borramos la tabla libros si existe
DROP TABLE IF EXISTS libros;

-- 2. La creamos con la siguiente estructura:
CREATE TABLE libros(
  titulo varchar(20),
  autor varchar(30),
  editorial varchar(15),
  precio float
);

-- 3. Agregamos registros a la tabla:
INSERT INTO libros (titulo,autor,editorial,precio) VALUES ('El aleph','Borges','Planeta',12.50);
INSERT INTO libros (titulo,autor,editorial,precio) VALUES ('Martin Fierro','Jose Hernandez','Emece',16.00);
INSERT INTO libros (titulo,autor,editorial,precio) VALUES ('Aprenda PHP','Mario Molina','Emece',35.40);
INSERT INTO libros (titulo,autor,editorial,precio) VALUES ('Cervantes','Borges','Paidos',50.90);

-- 4. Seleccionamos todos los registros:
SELECT titulo, autor,editorial,precio FROM libros;

-- 5. Seleccionamos los registros cuyo autor sea diferente de 'Borges':
SELECT titulo, autor,editorial,precio FROM libros WHERE autor<>'Borges';

-- 6. Seleccionamos los registros cuyo precio supere los 20 pesos:
SELECT titulo, autor,editorial,precio FROM libros WHERE precio>20;

-- 7. Seleccionamos los libros cuyo precio es menor o igual a 30:
SELECT titulo,autor,editorial,precio FROM libros WHERE precio<=30;
