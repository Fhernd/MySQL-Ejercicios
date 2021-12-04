-- 1. Elimine la tabla "visitas", si existe:
DROP TABLE IF EXISTS visitas;

-- 2. Créela con la siguiente estructura:
CREATE TABLE visitas (
  numero INT UNSIGNED AUTO_INCREMENT,
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
 INSERT INTO visitas (nombre,mail,fecha)
  VALUES ('Juancito','JuanJosePerez@hotmail.com','2006-09-15');

-- 4. Obtenga los distintos nombres de quienes visitaron la página:
SELECT DISTINCT nombre FROM visitas;

-- 5. Muestre la cantidad de veces que cada persona ingresó a la página:
SELECT nombre, COUNT(fecha)
FROM visitas 
GROUP BY nombre;

-- 6. Muestre la cantidad de veces que cada persona ingresó a la página en distintas fechas:
SELECT nombre, COUNT(DISTINCT fecha)
FROM visitas 
GROUP BY nombre;
