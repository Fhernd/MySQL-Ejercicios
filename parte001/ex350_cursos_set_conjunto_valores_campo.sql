-- 1. Elimine la tabla "inmuebles" si existe:
DROP TABLE IF EXISTS inmuebles;

-- 2. Cree la tabla "inmuebles":
CREATE TABLE inmuebles(
  detalles SET ('estacionamiento','terraza','pileta','patio','ascensor'),
  domicilio VARCHAR(30),
  propietario VARCHAR(30),
  precio DECIMAL (9,2) UNSIGNED
 );

-- 3. Ingrese algunos registros:
 INSERT INTO inmuebles (detalles,precio) 
  VALUES ('terraza,pileta',50000);
 INSERT INTO inmuebles (detalles,precio) 
  VALUES ('patio,terraza,pileta',60000);
 INSERT INTO inmuebles (detalles,precio) 
  VALUES ('ascensor,terraza,pileta',80000);
 INSERT INTO inmuebles (detalles,precio) 
  VALUES ('patio,estacionamiento',65000);
 INSERT INTO inmuebles (detalles,precio) 
  VALUES ('estacionamiento',90000);

-- 4. Seleccione todos los datos de los departamentos con terraza:
SELECT * FROM inmuebles 
WHERE FIND_IN_SET('terraza', detalles) > 0;

-- 5. Seleccione los departamentos que no tiene ascensor:
SELECT * FROM inmuebles 
WHERE detalles NOT LIKE '%ascensor%';

-- 6. Muestre los inmuebles que tengan terraza y pileta solamente:
SELECT * FROM inmuebles 
WHERE detalles = 'terraza,pileta';

-- 7. Muestre los inmuebles que no tengan ascensor y si estacionamiento, además de otros detalles:
SELECT * FROM inmuebles 
WHERE detalles NOT LIKE '%ascensor%' AND detalles LIKE '%estacionamiento%';

-- 8. Ingrese un registro con valor inexistente en "detalles":
 INSERT INTO inmuebles (detalles,precio) 
  VALUES ('terraza,barbacoa',50000);

SELECT * FROM inmuebles;

-- 9. Ingrese un registro sin valor para "detalles":
 INSERT INTO inmuebles (precio) 
  VALUES (60000);

SELECT * FROM inmuebles;
