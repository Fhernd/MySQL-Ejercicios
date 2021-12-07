-- 1. Elimine la tabla "inscriptos" si existe:
DROP TABLE IF EXISTS inscriptos;

-- 2. La tabla contiene los siguientes campos:
-- documento del socio alumno: CHAR(8) NOT NULL
-- nombre del socio: VARCHAR(30),
-- nombre del deporte (tenis, futbol, natación, basquet): VARCHAR(15) NOT NULL,
-- año de inscripcion: year,
-- matrícula: si la matrícula ha sido o no pagada ('s' o 'n').

-- 3. Necesitamos una clave primaria que identifique cada registro. Un socio puede inscribirse en 
-- varios deportes en distintos años. Un socio no puede inscribirse en el mismo deporte el mismo año. 
-- varios socios se inscriben en un mismo deporte. Cree la tabla con una clave compuesta:
 CREATE TABLE inscriptos(
  documento CHAR(8) NOT NULL, 
  nombre VARCHAR(30),
  deporte VARCHAR(15) NOT NULL,
  agnio YEAR,
  matricula CHAR(1),
  PRIMARY KEY(documento,deporte,agnio)
 );

-- 4. Inscriba a varios alumnos en el mismo deporte en el mismo año:
INSERT INTO inscriptos VALUES ('12345678', 'Karla Pérez', 'Basket', 2019, 1);
INSERT INTO inscriptos VALUES ('98765413', 'Tomas Manjarrez', 'Basket', 2019, 1);
INSERT INTO inscriptos VALUES ('852963741', 'David Abella', 'Basket', 2019, 1);

-- 5. Inscriba a un mismo alumno en varios deportes en el mismo año.
INSERT INTO inscriptos VALUES ('12345678', 'Karla Pérez', 'Natación', 2019, 1);
INSERT INTO inscriptos VALUES ('12345678', 'Karla Pérez', 'Tenias', 2019, 1);

-- 6. Ingrese un registro con el mismo documento de socio en el mismo deporte en distintos años:
INSERT INTO inscriptos VALUES ('12345678', 'Karla Pérez', 'Natación', 2020, 1);
INSERT INTO inscriptos VALUES ('12345678', 'Karla Pérez', 'Natación', 2021, 1);

-- 7. Intente inscribir a un socio alumno en un deporte en el cual ya esté inscripto en un año en el 
-- cual ya se haya inscripto:
-- INSERT INTO inscriptos VALUES ('12345678', 'Karla Pérez', 'Natación', 2021, 1);

-- 8. Intente eliminar un campo parte de la clave:
-- ALTER TABLE inscriptos DROP agnio;
