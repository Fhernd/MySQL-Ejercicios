-- 1. Elimine la tabla, si existe:
DROP TABLE IF EXISTS medicamentos;

-- 2. Cree la tabla con la siguiente estructura:
CREATE TABLE medicamentos(
  codigo INTEGER auto_increment,
  nombre VARCHAR(20) NOT NULL,
  laboratorio VARCHAR(20),
  precio FLOAT,
  cantidad INTEGER NOT NULL,
  PRIMARY KEY (codigo)
);

-- 3. Visualice la estructura de la tabla "medicamentos":
DESCRIBE medicamentos;

-- 4. Ingrese los siguientes registros:
INSERT INTO medicamentos (nombre,laboratorio,precio,cantidad)
  VALUES('Sertal gotas','Roche',5.2,100); 
 INSERT INTO medicamentos (nombre,laboratorio,precio,cantidad)
  VALUES('Sertal compuesto','Roche',7.1,150);
 INSERT INTO medicamentos (nombre,laboratorio,precio,cantidad)
  VALUES('Buscapina','Roche',null,200);
 INSERT INTO medicamentos (nombre,laboratorio,precio,cantidad)
  VALUES('Amoxidal 500','Bayer',15.60,0);
 INSERT INTO medicamentos (nombre,laboratorio,precio,cantidad)
  VALUES('Amoxidal jarabe','Bayer',25,120);
 INSERT INTO medicamentos (nombre,laboratorio,precio,cantidad)
  VALUES('Amoxinil',null,25,120);
 INSERT INTO medicamentos (nombre, laboratorio,precio,cantidad)
  VALUES('Bayaspirina','',0,150); 

-- 5. Verifique que el campo "codigo" generó los valores de modo automático (select).
SELECT * FROM medicamentos;

-- 6. Recupere los registros que contengan valor "null" en el campo "laboratorio", 
-- luego los que tengan una cadena vacía en el mismo campo. Note que el resultado 
-- es diferente:
SELECT * FROM medicamentos WHERE laboratorio IS NULL;
SELECT * FROM medicamentos WHERE laboratorio = '';

-- 7. Recupere los registros que contengan valor "null" en el campo "precio", 
-- luego los que tengan el valor 0 en el mismo campo. Note que el resultado es diferente:
SELECT * FROM medicamentos WHERE precio IS NULL;
SELECT * FROM medicamentos WHERE precio = 0;

-- 8. Intente ingresar el siguiente registro con valor "null" para el campo "cantidad":
-- INSERT INTO medicamentos (nombre, laboratorio,precio,cantidad)
-- VALUES('Benadryl comprimidos','Bayer',10.20,null); 
-- Aparece un mensaje de error.

-- 9. Ingrese el siguiente registro con valor "null" para el campo correspondiente al código:
-- INSERT INTO medicamentos (codigo,nombre, laboratorio,precio,cantidad)
-- VALUES(null,'Benadryl comprimidos','Bayer',10.20,null);

-- No muestra un mensaje de error. Si recuperamos todos los registros, verá que almacenó 
-- el siguiente valor de la secuencia de autoincremento.

SELECT * FROM medicamentos;

-- 10. Recupere los registros cuyo precio sea distinto de 0, luego los que 
-- sean distintos de "null":
SELECT * FROM medicamentos WHERE precio <> 0;
SELECT * FROM medicamentos WHERE precio IS NOT NULL;

-- 11. Recupere los registros en los cuales el laboratorio no contenga una cadena vacía, 
-- luego los que sean distintos de "null":
SELECT * FROM medicamentos WHERE laboratorio <> '';
SELECT * FROM medicamentos WHERE laboratorio IS NOT NULL;
