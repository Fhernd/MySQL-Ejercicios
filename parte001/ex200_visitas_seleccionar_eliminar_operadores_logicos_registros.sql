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
 INSERT INTO visitas (nombre,mail,pais,fecha)
  VALUES ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10');
 INSERT INTO visitas (nombre,mail,pais,fecha)
  VALUES ('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','Chile','2006-10-10 21:30');
 INSERT INTO visitas (nombre,mail,pais,fecha)
  VALUES ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45');
 INSERT INTO visitas (nombre,mail,pais,fecha)
  VALUES ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15');
 INSERT INTO visitas (nombre,mail,pais,fecha)
  VALUES ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45');
 INSERT INTO visitas (nombre,mail,pais,fecha)
  VALUES ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-12 16:20');
 INSERT INTO visitas (nombre,mail,pais,fecha)
  VALUES ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');

-- 4. Muestre los datos de las visitas de "Argentina" que hayan ingresado después del mes de 
-- septiembre (9):
SELECT * FROM visitas WHERE pais = 'Argentina' AND MONTH(fecha) > 9;

-- 5. Elimine todos los registros cuyo pais no sea "Mexico" y que hayan visitado la página antes de 
-- las 16 hs.:
DELETE FROM visitas WHERE NOT (pais = 'Mexico') AND HOUR(fecha) < 16;
