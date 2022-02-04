-- 1. Elimine la tabla "visitas", si existe:
DROP TABLE IF EXISTS visitas;

-- 2. Créela con la siguiente estructura:
 CREATE TABLE visitas (
  numero INT UNSIGNED AUTO_INCREMENT,
  nombre VARCHAR(30) NOT NULL,
  mail VARCHAR(50),
  pais VARCHAR (20),
  fecha DATE,
  PRIMARY KEY (numero)
);

-- 3. Ingrese algunos registros:
INSERT INTO visitas (nombre,mail,fecha)
  VALUES ('Ana Maria Lopez','AnaMaria@hotmail.com','2006-02-10');
INSERT INTO visitas (nombre,mail,fecha)
  VALUES ('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','2006-05-10');
INSERT INTO visitas (nombre,mail,fecha)
  VALUES ('Juancito','JuanJosePerez@hotmail.com','2006-06-11');
INSERT INTO visitas (nombre,mail,fecha)
  VALUES ('Fabiola Martinez','MartinezFabiola@hotmail.com','2006-10-12');
INSERT INTO visitas (nombre,mail,fecha)
  VALUES ('Fabiola Martinez','MartinezFabiola@hotmail.com','2006-09-12');
INSERT INTO visitas (nombre,mail,fecha)
  VALUES ('Juancito','JuanJosePerez@hotmail.com','2006-09-12');
INSERT INTO visitas (nombre,mail,fecha)
  VALUES ('Juancito','JuanJosePerez@hotmail.com','2006-09-15');
INSERT INTO visitas (nombre,mail,fecha)
  VALUES ('Juancito','JuanJosePerez@hotmail.com','2006-09-15');

-- 4. Muestre el nombre, la fecha de ingreso y los nombres de los días de la semana empleando 
-- un "case": 
SELECT nombre, fecha, 
CASE DAYNAME(fecha)
  WHEN 'Monday' THEN 'Lunes' 
  WHEN 'Tuesday' THEN 'Martes' 
  WHEN 'Wednesday' THEN 'Miércoles' 
  WHEN 'Thursday' THEN 'Jueves' 
  WHEN 'Friday' THEN 'Viernes' 
  WHEN 'Saturday' THEN 'Sábado' 
  ELSE 'Domingo'  END AS 'dia'
FROM visitas;

-- 5. Muestre el nombre y fecha de ingreso a la página y con un "case" muestre si el nombre del mes 
-- corresponde al 1º, 2º o 3º cuatrimestre del año.
SELECT nombre, fecha, 
CASE WHEN (MONTHNAME(fecha) in ('January', 'February', 'March', 'April')) THEN '1er cuatrimestre' 
WHEN (MONTHNAME(fecha) in ('May', 'June', 'July', 'August')) THEN '2do cuatrimestre' 
ELSE '3er cuatrimestre' END AS 'Mes' 
FROM visitas;