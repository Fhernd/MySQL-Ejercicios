-- 1. Elimine la tabla si existe:
DROP TABLE IF EXISTS libros;

-- 2. Cree la tabla con un campo "blob" en el cual se pueda almacenar los temas principales que trata 
-- el libro:
CREATE TABLE libros(
  codigo INT UNSIGNED AUTO_INCREMENT,
  titulo VARCHAR(40),
  autor VARCHAR(30),
  editorial VARCHAR(20),
  temas BLOB,
  precio DECIMAL(5,2) UNSIGNED,
  PRIMARY KEY (codigo)
 );

-- 3. Ingrese algunos registros.:
 INSERT INTO libros VALUES (1,'Aprenda PHP','Mario Molina','Emece',
 'Instalacion de PHP.
  Palabras reservadas.
  Sentencias basicas.
  Definicion de variables.',
 45.6);
 
 INSERT INTO libros VALUES (2,'Java en 10 minutos','Mario Molina','Planeta',
 'Instalacion de Java en Windows.
  Instalacion de Java en Linux.
  Palabras reservadas.
  Sentencias basicas.
  Definir variables.',
 55);

 INSERT INTO libros VALUES (3,'PHP desde cero','Joaquin Perez','Planeta',
 'Instalacion de PHP.
  Instrucciones basicas.
  Definición de variables.',
 50);

-- 4. Busque todos los libros sobre "PHP" que incluyan el tema "variables":
SELECT * FROM libros 
WHERE titulo LIKE '%PHP%' AND temas LIKE '%variables%';

-- 5. Busque los libros de "Java" que incluyan el tema "Instalacion" o "Instalar":
SELECT * FROM libros 
WHERE titulo LIKE '%Java%' AND (temas LIKE '%Instalación%' OR temas LIKE '%Instalar%');
