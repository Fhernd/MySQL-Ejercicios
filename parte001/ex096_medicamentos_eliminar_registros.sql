-- 1. Elimine la tabla, si existe:
DROP TABLE IF EXISTS medicamentos;

-- 2. Cree la tabla con la siguiente estructura:
CREATE TABLE medicamentos(
  codigo INTEGER auto_increment,
  nombre VARCHAR(20),
  laboratorio VARCHAR(20),
  precio FLOAT,
  cantidad INTEGER,
  PRIMARY KEY (codigo)
);

DESCRIBE medicamentos;

-- 3. Ingrese los siguientes registros:
 INSERT INTO medicamentos (nombre, laboratorio,precio,cantidad)
   VALUES('Sertal','Roche',5.2,100);
 INSERT INTO medicamentos (nombre, laboratorio,precio,cantidad)
  VALUES('Buscapina','Roche',4.10,200);
 INSERT INTO medicamentos (nombre, laboratorio,precio,cantidad)
  VALUES('Amoxidal 500','Bayer',15.60,100);

SELECT * FROM medicamentos;

-- 4. Elimine todos los registros con "delete":
DELETE FROM  medicamentos;

SELECT * FROM medicamentos;

-- 5. Ingrese 2 registros:
INSERT INTO medicamentos (nombre, laboratorio,precio,cantidad)
   VALUES('Sertal','Roche',5.2,100);
INSERT INTO medicamentos (nombre, laboratorio,precio,cantidad)
  VALUES('Amoxidal 500','Bayer',15.60,100);

-- 6. Vea los registros para verificar que continuó la secuencia al generar el valor para "codigo":
SELECT * FROM medicamentos;

-- 7. Vacíe la tabla:
TRUNCATE TABLE medicamentos;

SELECT * FROM medicamentos;

-- 8. Ingrese el siguiente registro:
INSERT INTO medicamentos (nombre, laboratorio,precio,cantidad)
  VALUES('Buscapina','Roche',4.10,200);

-- 9. Vea los registros para verificar que al cargar el código reinició la secuencia en 1:
SELECT * FROM medicamentos;
