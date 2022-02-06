-- C) Una clínica registra las consultas de los pacientes en una tabla llamada "consultas" y en otra 
-- tabla denominada "obrassociales" almacena los datos de las obras sociales que atiende.

-- 1. Elimine las tablas si existen:
DROP TABLE IF EXISTS consultas;
DROP TABLE IF EXISTS obrassociales;

-- 2. Cree las tablas: 
 create table consultas(
  fecha date,
  hora time,
  documento char(8) not null,
  codigoobrasocial tinyint unsigned,
  medico varchar(30),
  primary key(fecha,hora,medico)
 );

 create table obrassociales(
  codigo tinyint unsigned auto_increment,
  nombre varchar(15),
  monto decimal(5,2) unsigned,
  primary key(codigo)
 );

-- 3. Ingrese algunos registros:
 insert into obrassociales (nombre,monto)
  values('PAMI',2);
 insert into obrassociales (nombre,monto)
  values('IPAM',5);
 insert into obrassociales (nombre,monto)
  values('OSDOP',3);

 insert into consultas values('2006-08-10','8:00','22333444',1,'Perez');
 insert into consultas values('2006-08-10','10:00','22333444',1,'Lopez');
 insert into consultas values('2006-08-10','8:30','23333444',1,'Perez');
 insert into consultas values('2006-08-10','9:00','24333444',2,'Perez');
 insert into consultas values('2006-08-10','10:00','25333444',3,'Perez');
 insert into consultas values('2006-08-10','8:30','25333444',1,'Garcia');
 insert into consultas values('2006-09-10','8:30','25333444',1,'Lopez');

-- 4- Muestre la fecha,hora,documento del paciente, médico, nombre y monto de la obra social de todas 
-- las consultas (join con "obrassociales"):
SELECT C.fecha, C.hora, C.documento, C.medico, OS.nombre, OS.monto
FROM consultas AS C 
JOIN obrassociales OS 
ON C.codigoobrasocial = OS.codigo;

-- 5. Muestre fecha,hora,documento del paciente y nombre de la obra social para las consultas del 
-- doctor "Perez":
SELECT C.fecha, C.hora, C.documento, C.medico, OS.nombre 
FROM consultas AS C 
JOIN obrassociales OS 
ON C.codigoobrasocial = OS.codigo 
WHERE C.medico = 'Perez';

-- 6. Muestre las obras sociales DISTINTAS que atendió el doctor "Perez" el día "2006-08-10":
SELECT DISTINCT OS.nombre 
FROM consultas AS C 
JOIN obrassociales OS 
ON C.codigoobrasocial = OS.codigo 
WHERE C.medico = 'Perez' AND C.fecha = "2006-08-10";
