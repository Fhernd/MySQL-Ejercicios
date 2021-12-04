-- 1. Elimine la tabla "autos" si existe:
DROP TABLE IF EXISTS autos;

-- 2. Cree la tabla con la siguiente estructura:
 CREATE TABLE autos(
  patente CHAR(6),
  marca VARCHAR(20),
  modelo YEAR,
  precio DECIMAL(8,2) UNSIGNED,
  PRIMARY KEY(patente)
 );

-- 3. Ingrese los siguientes registros:
 INSERT INTO autos VALUES ('ACD123','Fiat 128','1970',15000);
 INSERT INTO autos VALUES ('ACG234','Renault 11','1990',40000);
 INSERT INTO autos VALUES ('BCD333','Peugeot 505','1990',80000);
 INSERT INTO autos VALUES ('GCD123','Renault 11','1990',70000);
 INSERT INTO autos VALUES ('BCC333','Renault Megane','1998',95000);
 INSERT INTO autos VALUES ('BVF543','Fiat 128','1975',20000);
 INSERT INTO autos VALUES ('FCD123','Renault 11','1995',70000);
 INSERT INTO autos VALUES ('HCC333','Renault Megane','1995',95000);
 INSERT INTO autos VALUES ('IVF543','Fiat 128','1970',20000);

-- 4. Muestre las distintas marcas de autos disponibles:
SELECT DISTINCT marca FROM autos;

-- 5. Muestre la cantidad de autos por marca, de diferentes modelos:
SELECT marca, COUNT(DISTINCT modelo) 
FROM autos 
GROUP BY marca;

-- 6. Muestre los distintos modelos de autos disponibles:
SELECT DISTINCT modelo FROM autos;
