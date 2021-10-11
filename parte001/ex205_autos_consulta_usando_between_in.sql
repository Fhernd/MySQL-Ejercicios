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

SELECT * FROM autos;

-- 4. Seleccione todos los autos cuyo año sea '1970' o '1975' usando el operador "in":
SELECT * FROM autos WHERE modelo IN ('1970', '1975');

-- 5. Seleccione todos los autos cuyo precio esté entre 50000 y 100000:
SELECT * FROM autos WHERE precio BETWEEN 50000 AND 100000;
