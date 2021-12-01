-- 1. Elimine la tabla "autos" si existe:
DROP TABLE IF EXISTS autos;

-- 2. Cree la tabla con la siguiente estructura:
CREATE TABLE autos(
  patente CHAR(6),
  marca VARCHAR(20),
  modelo CHAR(4),
  precio DECIMAL(8,2) unsigned,
  PRIMARY KEY(patente)
 );

-- 3. Ingrese los siguientes registros:
 INSERT INTO autos(patente,marca,modelo,precio)
  VALUES('ACD123','Fiat 128','1970',15000);
 INSERT INTO autos(patente,marca,modelo,precio)
  VALUES('ACG234','Renault 11','1990',40000);
 INSERT INTO autos(patente,marca,modelo,precio)
  VALUES('BCD333','Peugeot 505','1990',80000);
 INSERT INTO autos(patente,marca,modelo,precio)
  VALUES('GCD123','Renault Clio','1990',70000);
 INSERT INTO autos(patente,marca,modelo,precio)
  VALUES('BCC333','Renault Megane','1998',95000);
 INSERT INTO autos(patente,marca,modelo,precio)
  VALUES('BVF543','Fiat 128','1975',20000);

-- 4. Muestre el valor del auto más caro y más barato:
SELECT MAX(precio), MIN(precio) FROM autos;

-- 5. Muestre el valor de auto más caro de 1990:
SELECT MAX(precio) FROM autos WHERE modelo = '1990';

-- 6. Muestre el promedio de los precios de los autos "Fiat 128":
SELECT AVG(precio) FROM autos WHERE marca = 'Fiat 128';

-- 7. Calcule el valor en dinero de todos los autos marca "Renault" con modelos menores a "1995":
SELECT SUM(precio) FROM autos WHERE marca LIKE '%Renault%' AND modelo < 1995;
