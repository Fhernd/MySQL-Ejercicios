DROP TABLE IF EXISTS libros;

CREATE TABLE libros(
  codigo INT UNSIGNED,
  titulo VARCHAR(40) NOT NULL,
  autor VARCHAR(30),
  editorial VARCHAR (20),
  precio DECIMAL(5,2) UNSIGNED,
  cantidad SMALLINT UNSIGNED
 );

ALTER TABLE libros
  ADD PRIMARY KEY (codigo);

describe libros;

-- ALTER TABLE libros
-- ADD PRIMARY KEY (titulo);

ALTER TABLE libros
  MODIFY codigo INT UNSIGNED AUTO_INCREMENT;

-- ALTER TABLE libros
--  DROP PRIMARY KEY;

ALTER TABLE libros
  MODIFY codigo INT UNSIGNED;

ALTER TABLE libros
  DROP PRIMARY KEY;

DESCRIBE libros;
