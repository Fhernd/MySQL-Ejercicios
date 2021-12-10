-- 1. Elimine la tabla si existe:
DROP TABLE IF EXISTS consultas;

-- 2. Cree la tabla con una clave primaria compuesta (fecha y número de consulta) un índice único 
-- (fecha,documento y médico). Hay 2 campos por los cuales podemos realizar consultas 
-- frecuentemente: "medico" y "obrasocial", cree índices para esos campos.

-- 3. Cree la tabla con la siguiente estructura:
 CREATE TABLER consultas(
  fecha DATE,
  numero INT unsigned,
  documento CHAR(8) NOT NULL,
  obrasocial VARCHAR(30),
  medico VARCHAR(30),
  PRIMARY KEY(fecha,numero),
  UNIQUE i_consulta(documento,fecha,medico),
  INDEX i_medico (medico),
  INDEX i_obrasocial (obrasocial)
 );

-- 4. Vea los índices:
SHOW INDEX FROM consultas;

-- 5. Los valores de la clave primaria no pueden repetirse. Intente ingresar dos pacientes el mismo 
-- día con el mismo número de consulta.
INSERT INTO consultas VALUES ('2021/07/23', 1001, '12345678', 'OS1', 'Roberto');
-- INSERT INTO consultas VALUES ('2021/07/23', 1001, '12345678', 'OS1', 'Roberto');

-- 6. Los valores para el índice único no pueden repetirse. Intente ingresar una consulta del mismo 
-- paciente, en la misma fecha con el mismo médico:
-- INSERT INTO consultas VALUES ('2021/07/23', 1001, '12345678', 'OS1', 'Roberto');

-- 7. Note que los índices por los campos "medico" y "obrasocial" son comunes, porque los valores se 
-- repiten. Ingrese consultas en las cuales se repitan los médicos y las obras sociales.
INSERT INTO consultas VALUES ('2021/07/23', 1002, '95175321', 'OS1', 'Roberto');
INSERT INTO consultas VALUES ('2021/07/23', 1003, '95175324', 'OS1', 'Roberto');
INSERT INTO consultas VALUES ('2021/07/23', 1004, '95132452', 'OS1', 'Roberto');

SELECT * FROM consultas;
