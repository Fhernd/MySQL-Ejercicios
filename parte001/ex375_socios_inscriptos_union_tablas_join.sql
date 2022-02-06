-- 1- Elimine las tablas si existen:
DROP TABLE IF EXISTS socios, inscriptos;

-- 2. Cree las tablas:
CREATE TABLE socios(
  documento char(8) not null,
  nombre varchar(30),
  domicilio varchar(30),
  primary key(documento)
 );

CREATE TABLE inscriptos(
  documento char(8) not null, 
  deporte varchar(15) not null,
  agnio year,
  matricula char(1), /*si esta paga ='s' sino 'n'*/
  primary key(documento,deporte,agnio)
 );

-- 3. Ingrese algunos registros para ambas tablas:
 insert into socios values('22333444','Juan Perez','Colon 234');
 insert into socios values('23333444','Maria Lopez','Sarmiento 465');
 insert into socios values('24333444','Antonio Juarez','Caseros 980');

 insert into inscriptos values ('22333444','natacion','2005','s');
 insert into inscriptos values ('22333444','natacion','2006','n');
 insert into inscriptos values ('23333444','natacion','2005','s');
 insert into inscriptos values ('23333444','tenis','2006','s');
 insert into inscriptos values ('23333444','natacion','2006','s');
 insert into inscriptos values ('24333444','tenis','2006','n');
 insert into inscriptos values ('24333444','basquet','2006','n');

-- 4. Muestre el nombre del socio y todos los campos de la tabla "inscriptos":
SELECT S.nombre, I.*
FROM socios AS S 
JOIN inscriptos AS I 
ON S.documento = I.documento;

-- 5. Omita la referencia a las tablas en la condición "on" para verificar que la sentencia no se 
-- ejecuta porque el nombre del campo "documento" es ambiguo (ambas tablas lo tienen):
-- SELECT S.nombre, I.*
-- FROM socios AS S 
-- JOIN inscriptos AS I 
-- ON documento = documento;

-- 6. Muestre el nombre de los socios y los deportes en los cuales están inscriptos este año:
SELECT S.nombre, I.*
FROM socios AS S 
JOIN inscriptos AS I 
ON S.documento = I.documento 
WHERE agnio = 2006;

-- 7. Muestre el nombre y todas las inscripciones del socio con número de documento='23333444':
SELECT S.nombre, I.*
FROM socios AS S 
JOIN inscriptos AS I 
ON S.documento = I.documento 
WHERE S.documento = '23333444';
