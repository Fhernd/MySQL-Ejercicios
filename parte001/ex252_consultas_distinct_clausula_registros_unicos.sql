-- 1. Elimine la tabla si existe:
DROP TABLE IF EXISTS consultas;

-- 2. Cree la tabla con la siguiente estructura:
 CREATE TABLE consultas(
  fechayhora DATETIME NOT NULL,
  medico VARCHAR(30) NOT NULL,
  documento CHAR(8) NOT NULL,
  paciente VARCHAR(30),
  obrasocial VARCHAR(30)
 );

-- 4. Ingrese los siguientes registros:
 INSERT INTO consultas VALUES ('2006-08-10 8:00','Perez','22333444','Juana Garcia','PAMI');
 INSERT INTO consultas VALUES ('2006-08-10 10:00','Lopez','22333444','Juana Garcia','PAMI');
 INSERT INTO consultas VALUES ('2006-08-10 8:30','Perez','23333444','Adela Gomez','PAMI');
 INSERT INTO consultas VALUES ('2006-08-10 9:00','Perez','24333444','Juan Lopez','IPAM');
 INSERT INTO consultas VALUES ('2006-08-10 10:00','Perez','25333444','Hector Juarez','OSDOP');
 INSERT INTO consultas VALUES ('2006-08-10 8:30','Garcia','25333444','Ana Molina','PAMI');
 INSERT INTO consultas VALUES ('2006-09-10 8:30','Garcia','25333444','Ana Molina','PAMI');

-- 5. Muestre las distintas obras sociales:
SELECT DISTINCT obrasocial FROM consultas;

-- 6. Muestre los nombres de los distintos pacientes:
SELECT DISTINCT paciente FROM consultas;

-- 7. Muestre la cantidad de distintas obras sociales:
SELECT obrasocial, COUNT(DISTINCT obrasocial) 
FROM consultas 
GROUP BY obrasocial;

-- 8. Cuente la cantidad de médicos (SIN REPETIR) que tienen consultas agrupado por mes y día:
SELECT EXTRACT(MONTH FROM fechayhora), EXTRACT(DAY FROM fechayhora), COUNT(DISTINCT medico) 
FROM consultas 
GROUP BY EXTRACT(MONTH FROM fechayhora), EXTRACT(DAY FROM fechayhora);
