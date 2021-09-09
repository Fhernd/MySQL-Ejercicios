-- 1. Elimine la tabla "prestamos" si existe:
DROP TABLE IF EXISTS prestamos;

-- 2. Cree la tabla:
 CREATE TABLE prestamos(
  titulo VARCHAR(40) NOT NULL,
  documento CHAR(8) NOT NULL,
  fechaprestamo DATE NOT NULL,
  fechadevolucion DATE,
  devuelto CHAR(1) DEFAULT 'n'
 );

DESCRIBE prestamos;

-- 3. Ingrese algunos registros:
INSERT INTO prestamos (titulo,documento,fechaprestamo,fechadevolucion)
  VALUES ('Manual de 1 grado','23456789','2006-08-10','2006-08-12');
 INSERT INTO prestamos (titulo,documento,fechaprestamo,fechadevolucion)
  VALUES ('Alicia en el pais de las maravillas','23456789','2006-08-12','2006-08-14');
 INSERT INTO prestamos (titulo,documento,fechaprestamo,fechadevolucion)
  VALUES ('El aleph','22543987','2006-08-15','2006-08-17');
 INSERT INTO prestamos (titulo,documento,fechaprestamo,fechadevolucion)
  VALUES ('Manual de geografia 5 grado','25555666','2006-08-30','2006-09-01');

-- 4. Seleccione todos los registros para ver qué se guardó en el campo "devuelto" para el cual no 
-- ingresamos datos:
SELECT * FROM prestamos;
