-- 1. Elimine la tabla "visitas", si existe:
DROP TABLE IF EXISTS visitas;

-- 2. Créela con la siguiente estructura:
 create table visitas (
  numero INT UNSIGNED AUTO_INCREMENT,
  nombre VARCHAR(30) NOT NULL,
  mail VARCHAR(50),
  pais VARCHAR (20),
  puntaje TINYINT UNSIGNED,
  PRIMARY KEY(numero)
);

-- 3. Ingrese algunos registros:
 INSERT INTO visitas (nombre,mail,pais,puntaje)
  VALUES ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina',9);
 INSERT INTO visitas (nombre,mail,pais,puntaje)
  VALUES ('Gustavo Gonzalez','GustavoGGonzalez@yahoo.com','Chile',8);
 INSERT INTO visitas (nombre,mail,pais,puntaje)
  VALUES ('Juancito','JuanJosePerez@hotmail.com','Mexico',5);
 INSERT INTO visitas (nombre,mail,pais,puntaje)
  VALUES ('Fabiola Martinez','MartinezFabiolaM@hotmail.com','Chile',9);
 INSERT INTO visitas (nombre,mail,pais,puntaje)
  VALUES ('Fabiola Martinez',NULL,'Peru',8);
 INSERT INTO visitas (nombre,mail,pais,puntaje)
  VALUES ('Mariana Torres','MarianitaTorres','Peru',7);

-- 4. Muestre el promedio de los puntajes agrupados por pais, considerando sólo aquellos países que 
-- tiene más de 1 visita:
SELECT pais, AVG(puntaje) promedio_puntaje
FROM visitas 
GROUP BY pais 
HAVING COUNT(*) > 1;

-- 5. Muestre el promedio de los puntajes agrupados por pais, considerando sólo aquellos países cuyo 
-- promedio es mayor a 8:
SELECT pais, AVG(puntaje) promedio_puntaje
FROM visitas 
GROUP BY pais 
HAVING promedio_puntaje > 8;
