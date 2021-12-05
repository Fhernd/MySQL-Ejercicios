-- 1. Elimine la tabla "prestamos" si existe:
DROP TABLE IF EXISTS prestamos;

-- 2. Necesitamos una clave que identifique cada registro en la tabla "prestamos". El mismo libro no 
-- puede prestarse en la misma fecha.

-- 3. Cree la tabla:
 CREATE TABLE prestamos(
  titulo VARCHAR(40) NOT NULL,
  documento CHAR(8) NOT NULL,
  fechaprestamo DATE NOT NULL,
  fechadevolucion DATE,
  devuelto CHAR(1) DEFAULT 'N',
  PRIMARY KEY(titulo,fechaprestamo)
 );

-- 4. Ingrese los siguientes registros para la tabla "prestamos":
 INSERT INTO prestamos (titulo,documento,fechaprestamo)
  VALUES ('Manual de 1 grado','22333444','2006-07-10');
 INSERT INTO prestamos (titulo,documento,fechaprestamo)
  VALUES ('Manual de 1 grado','22333444','2006-07-20');
 INSERT INTO prestamos (titulo,documento,fechaprestamo)
  VALUES ('Manual de 1 grado','23333444','2006-07-15');
 INSERT INTO prestamos (titulo,documento,fechaprestamo)
  VALUES ('El aleph','22333444','2006-07-10');
 INSERT INTO prestamos (titulo,documento,fechaprestamo)
  VALUES ('El aleph','30333444','2006-08-10');

-- Note que un mismo libro fue prestado a un mismo socio pero en una fecha distinta.

-- 5. Intente ingresar un valor de clave primaria repetida:
INSERT INTO prestamos (titulo,documento,fechaprestamo)
  VALUES ('El aleph','30333444','2006-08-10');
