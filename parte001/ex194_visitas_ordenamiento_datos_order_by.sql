-- 1. Elimine la tabla "visitas", si existe:
DROP TABLE IF EXISTS visitas;

-- 2. Créela con la siguiente estructura:
CREATE TABLE visitas (
  numero INT unsigned auto_increment,
  nombre VARCHAR(30) NOT NULL,
  mail VARCHAR(50),
  pais VARCHAR (20),
  fecha DATE,
  PRIMARY KEY(numero)
);

-- 3. Ingrese algunos registros:
 INSERT INTO visitas (nombre,mail,fecha)
  VALUES ('Ana Maria Lopez','AnaMaria@hotmail.com','2006-10-10');
 INSERT INTO visitas (nombre,mail,fecha)
  VALUES ('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','2006-10-10');
 INSERT INTO visitas (nombre,mail,fecha)
  VALUES ('Juancito','JuanJosePerez@hotmail.com','2006-10-11');
 INSERT INTO visitas (nombre,mail,fecha)
  VALUES ('Fabiola Martinez','MartinezFabiola@hotmail.com','2006-10-12');
 INSERT INTO visitas (nombre,mail,fecha)
  VALUES ('Fabiola Martinez','MartinezFabiola@hotmail.com','2006-09-12');
 INSERT INTO visitas (nombre,mail,fecha)
  VALUES ('Juancito','JuanJosePerez@hotmail.com','2006-09-12');
 INSERT INTO visitas (nombre,mail,fecha)
  VALUES ('Juancito','JuanJosePerez@hotmail.com','2006-09-15');

-- 4. Ordene los rergistros por fecha, en orden descendente:
SELECT * FROM visitas ORDER BY fecha DESC;

-- 5. Ordene por nombre en forma ascendente y fecha en orden descendente:
SELECT * FROM visitas ORDER BY nombre ASC, fecha DESC;
