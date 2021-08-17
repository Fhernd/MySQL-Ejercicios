-- 1. Elimine la tabla si existe:
DROP TABLE IF EXISTS autos;

-- 2. Cree la tabla eligiendo el tipo de dato adecuado para almacenar estos datos:
CREATE TABLE autos(
  marca VARCHAR(15),
  modelo YEAR,
  dueno VARCHAR(30),
  precio DECIMAL (8,2) UNSIGNED
 );

-- 3. Ingrese los siguientes registros:
 INSERT INTO autos VALUES('Fiat 128','1970','Juan Lopez',50000);
 INSERT INTO autos VALUES('Renault 11','1990','Juan Lopez',80000);
 INSERT INTO autos VALUES('Fiat 128','1971','Ana Ferreyra',51000);
 INSERT INTO autos VALUES('Peugeot 505','1998','Luis Luque',99000);
 INSERT INTO autos VALUES('Peugeot 505','1997','Carola Perez',85000);

-- 4. Seleccione todos los autos cuyo modelo sea menor a "1995":
SELECT * FROM autos WHERE modelo < 1995;

-- 5. Muestre la marca y modelo de los autos que no sean de "1970":
SELECT * FROM autos WHERE modelo <> 1970;

-- 6. Ingrese un auto con el valor para "modelo" de tipo numérico:
INSERT INTO autos VALUES('Peugeot 505',1995,'Carlos Lopez',88000);

SELECT * FROM autos;
