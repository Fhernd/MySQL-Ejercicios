-- 1. Elimine la tabla "prestamos" si existe:
DROP TABLE IF EXISTS prestamos;

-- 2. Cree la tabla:
CREATE TABLE prestamos(
  codigo INT UNSIGNED,
  titulo VARCHAR(40) NOT NULL,
  documento CHAR(8) NOT NULL,
  fechaprestamo DATE NOT NULL,
  fechadevolucion DATE,
  devuelto CHAR(1) /* si se devolvió 's' sino 'n'*/
 );

DESCRIBE prestamos;

-- 3. Agregue una clave primaria compuesta por "codigo" y "fechaprestamo":
ALTER TABLE prestamos ADD PRIMARY KEY (codigo, fechaprestamo);

DESCRIBE prestamos;

-- 4. Intente agregar un registro con clave repetida.

-- 5. Elimine la clave primaria:
ALTER TABLE prestamos DROP PRIMARY KEY;

DESCRIBE prestamos;
