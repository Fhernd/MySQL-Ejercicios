-- 1. Elimine la tabla "autos" si existe:
DROP TABLE IF EXISTS autos;

-- 2- Cree la tabla con la siguiente estructura:
 CREATE TABLE autos(
  patente CHAR(6),
  marca VARCHAR(20),
  modelo CHAR(4),
  precio FLOAT unsigned,
  PRIMARY KEY(patente)
 );

-- 3. Ingrese los siguientes registros:
 insert into autos (patente,marca,modelo,precio)
  values('ACD123','Fiat 128','1970',15000);
 insert into autos (patente,marca,modelo,precio)
  values('ACG234','Renault 11','1990',40000);
 insert into autos (patente,marca,modelo,precio)
  values('BCD333','Peugeot 505','1990',80000);
 insert into autos (patente,marca,modelo,precio)
  values('GCD123','Renault Clio','1990',70000);
 insert into autos (patente,marca,modelo,precio)
  values('BCC333','Renault Megane','1998',95000);
 insert into autos (patente,marca,modelo,precio)
  values('BVF543','Fiat 128','1975',20000);

-- 4. Hemos definido el campo "patente" de tipo "CHAR" y no "VARCHAR" porque la cadena de caracteres 
-- siempre tendrá la misma longitud (6 caracteres), con esta definición ocupamos 6 bytes, si lo 
-- hubiésemos definido como "VARCHAR(6)" ocuparía 7 bytes. Lo mismo sucede con el campo "modelo", en 
-- el cual almacenaremos el año, necesitamos 4 caracteres fijos. Para el campo "precio" definimos un 
-- float sin signo porque los valores nunca serán negativos.

-- 5. Seleccione todos los autos del año 1990:
SELECT * FROM autos WHERE modelo = '1990';

-- 6. Seleccione todos los autos con precio superior a 50000:
SELECT * FROM autos WHERE precio > 50000;
