-- 1. Elimine la tabla si existe:
DROP TABLE IF EXISTS consultas;

-- 2- La tabla contiene los siguientes datos:
-- fechayhora: DATETIME NOT NULL, fecha y hora de la consulta,
-- medico: VARCHAR(30), NOT NULL, nombre del médico (Perez,Lopez,Duarte),
-- documento: CHAR(8) NOT NULL, documento del paciente,
-- paciente: VARCHAR(30), nombre del paciente,
-- obrasocial: VARCHAR(30), nombre de la obra social ('IPAM','PAMI').

-- 3. Un médico sólo puede atender a un paciente en una fecha y hora determianada. En una fecha y hora 
-- determinada, varios médicos atienden a distintos pacientes. Cree la tabla definiendo una clave 
-- primaria compuesta:
 CREATE TABLE consultas(
  fechayhora DATETIME NOT NULL,
  medico VARCHAR(30) NOT NULL,
  documento CHAR(8) NOT NULL,
  paciente VARCHAR(30),
  obrasocial VARCHAR(30),
  PRIMARY KEY(fechayhora, medico)
 );

-- 4. Ingrese varias consultas para un mismo médico en distintas horas el mismo día:
INSERT INTO consultas VALUES ('2021-05-07 06:00', '1001', '2001', 'Carlos Pérez', 'OS1');
INSERT INTO consultas VALUES ('2021-05-07 07:00', '1001', '2002', 'Roberto Monroy', 'OS2');
INSERT INTO consultas VALUES ('2021-05-07 08:00', '1001', '2003', 'Adriana Lucía Londoño', 'OS1');

-- 5. Ingrese varias consultas para diferentes médicos en la misma fecha y hora:
INSERT INTO consultas VALUES ('2021-05-07 06:00', '1002', '2001', 'Carlos Pérez', 'OS1');
INSERT INTO consultas VALUES ('2021-05-07 07:00', '1003', '2002', 'Roberto Monroy', 'OS2');
INSERT INTO consultas VALUES ('2021-05-07 08:00', '1004', '2003', 'Adriana Lucía Londoño', 'OS1');

-- 6. Intente ingresar una consulta para un mismo médico en la misma hora el mismo día.
INSERT INTO consultas VALUES ('2021-05-07 06:00', '1001', '2004', 'Daniela Villamizar', 'OS1');
