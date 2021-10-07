-- 1. Elimine la tabla "visitas", si existe:
DROP TABLE IF EXISTS visitas;

-- 2. Créela con la siguiente estructura:
CREATE TABLE visitas (
  numero int unsigned auto_increment PRIMARY KEY,
  nombre varchar(30) not null,
  mail varchar(50),
  pais varchar (20),
  fecha datetime
);

-- 3. Ingrese algunos registros:
 insert into visitas (nombre,mail,fecha)
  values ('Ana Maria Lopez','AnaMaria@hotmail.com','2006-10-10 10:10');
 insert into visitas (nombre,mail,fecha)
  values ('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','2006-10-10 21:30');
 insert into visitas (nombre,mail,fecha)
  values ('Juancito','JuanJosePerez@hotmail.com','2006-10-11 15:45');
 insert into visitas (nombre,mail,fecha)
  values ('Fabiola Martinez','MartinezFabiola@hotmail.com','2006-10-12 08:15');
 insert into visitas (nombre,mail,fecha)
  values ('Fabiola Martinez','MartinezFabiola@hotmail.com','2006-09-12 20:45');
 insert into visitas (nombre,mail,fecha)
  values ('Juancito','JuanJosePerez@hotmail.com','2006-09-12 16:20');
 insert into visitas (nombre,mail,fecha)
  values ('Juancito','JuanJosePerez@hotmail.com','2006-09-15 16:25');

-- 4. Se necesita el nombre de los usuarios y la hora de visita:
SELECT nombre, TIME(fecha) FROM visitas;

-- 5. Se necesita conocer el nombre de los usuarios y el nombre del mes de cada visita:
SELECT nombre, MONTH(fecha) FROM visitas;

-- 6. Se necesita saber la cantidad de visitas por día (lunes, martes...), mostrando el nombre del día:
SELECT DAYNAME(fecha), COUNT(*)
FROM visitas
GROUP BY DAYOFWEEK(fecha);
