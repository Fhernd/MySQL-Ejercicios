-- 1. Elimine la tabla "prestamos" si existe:
DROP TABLE IF EXISTS prestamos;

-- 2. Cree la tabla:
 CREATE TABLE prestamos(
  titulo VARCHAR(40) NOT NULL,
  documento CHAR(8) NOT NULL,
  fechaprestamo DATE NOT NULL,
  fechadevuelto DATE
 );

-- 3. Ingrese los siguientes registros:
 INSERT INTO prestamos (titulo,documento,fechaprestamo,fechadevuelto)
  VALUES ('Manual de 1 grado','23456789','2006-07-10','2006-07-12');
 INSERT INTO prestamos (titulo,documento,fechaprestamo,fechadevuelto)
  VALUES ('El aleph','22245679','2006-07-15',NULL);
 INSERT INTO prestamos (titulo,documento,fechaprestamo,fechadevuelto)
  VALUES ('Alicia en el pais de las maravillas','24456789','2006-07-20','2006-07-22');
 INSERT INTO prestamos (titulo,documento,fechaprestamo,fechadevuelto)
  VALUES ('Manual de biologia','25456789','2006-08-14',NULL);
 INSERT INTO prestamos (titulo,documento,fechaprestamo,fechadevuelto)
  VALUES ('Manual de geografia 5 grado','27456789','2006-08-21','2006-08-25');
 INSERT INTO prestamos (titulo,documento,fechaprestamo,fechadevuelto)
  VALUES ('Antologia poetica','28456789','2006-08-26','2006-08-27');
 INSERT INTO prestamos (titulo,documento,fechaprestamo,fechadevuelto)
  VALUES ('Manual de 1 grado','23456789','2006-08-26','2006-08-28');
INSERT INTO prestamos (titulo,documento,fechaprestamo,fechadevuelto)
  VALUES ('Manual de 1 grado','30456789','2006-09-01','2006-09-03');

-- 4. Cuente la cantidad de veces que se prestó el libro "Manual de 1 grado":
SELECT COUNT(*) FROM prestamos WHERE titulo = 'Manual de 1 grado';

-- 5. Cuente la cantidad de libros devueltos (contando por fechadevuelto):
SELECT COUNT(fechadevuelto) FROM prestamos;

-- 6. Cuente la cantidad de veces que se le prestaron libros a la persona con documento "23456789":
SELECT COUNT(*) FROM prestamos WHERE documento = "23456789";

-- 7. Cuente la cantidad de libros prestados en el mes de agosto:
SELECT COUNT(*) FROM prestamos WHERE MONTH(fechaprestamo) = 8;
