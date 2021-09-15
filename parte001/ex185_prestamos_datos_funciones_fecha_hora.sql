DROP TABLE IF EXISTS prestamos;

CREATE TABLE prestamos(
  titulo VARCHAR(40) NOT NULL,
  documento CHAR(8) NOT NULL,
  fechaprestamo DATE NOT NULL,
  fechadevolucion DATE,
  devuelto CHAR(1) DEFAULT 'n'
 );

INSERT INTO prestamos (titulo,documento,fechaPrestamo,fechaDevolucion)
  VALUES ('Manual de 1 grado','23456789','2006-08-10',DATE_add('2006-08-10', interval 5 day));

SELECT * FROM prestamos;

INSERT INTO prestamos (titulo,documento,fechaPrestamo,fechaDevolucion)
  VALUES ('Alicia en el pais de las maravillas','23456789',
'2006-08-12',DATE_add('2006-08-12', interval 5 day));
INSERT INTO prestamos (titulo,documento,fechaPrestamo,fechaDevolucion)
  VALUES ('El aleph','22543987','2006-08-15',DATE_add('2006-08-15', interval 5 day));
INSERT INTO prestamos (titulo,documento,fechaPrestamo,fechaDevolucion)
  VALUES ('Manual de geografia 5 grado','25555666','2006-08-30',
DATE_add('2006-08-30', interval 5 day));

SELECT * FROM prestamos;

INSERT INTO prestamos (titulo,documento,fechaPrestamo,fechaDevolucion)
  VALUES ('Atlas universal','24000111',current_DATE,DATE_add(current_DATE, interval 5 day));

SELECT * FROM prestamos;
