-- 1. 
DROP TABLE IF EXISTS medicamentos;

-- 2. 
CREATE TABLE medicamentos(
  codigo INTEGER auto_increment,
  nombre VARCHAR(20),
  laboratorio VARCHAR(20),
  precio FLOAT,
  cantidad INTEGER,
  PRIMARY KEY (codigo)
);

-- 3. 
DESCRIBE medicamentos;

-- 4. Ingrese los siguientes registros (INSERT INTO):
 INSERT INTO medicamentos (nombre, laboratorio,precio,cantidad)
   VALUES('Sertal','Roche',5.2,100);
 INSERT INTO medicamentos (nombre, laboratorio,precio,cantidad)
  VALUES('Buscapina','Roche',4.10,200);
 INSERT INTO medicamentos (nombre, laboratorio,precio,cantidad)
  VALUES('Amoxidal 500','Bayer',15.60,100);

-- 5. Verifique que el campo "código" generó los valores de modo automático:
SELECT * FROM medicamentos;

-- 6. Intente ingresar un registro con un valor de clave primaria repetido:
-- INSERT INTO medicamentos (codigo, nombre, laboratorio,precio,cantidad)
-- VALUES(2, 'Amoxidal 500','Bayer',15.60,100);

-- 7. Ingrese un registro con un valor de clave primaria no repetido salteando la secuencia:
INSERT INTO medicamentos (codigo, nombre, laboratorio,precio,cantidad)
  VALUES(19, 'Iboprufeno','Bayer',8.60,30);

-- 8.  Ingrese el siguiente registro:
 INSERT INTO medicamentos (nombre, laboratorio,precio,cantidad)
  VALUES('Bayaspirina','Bayer',2.10,150); 

SELECT * FROM medicamentos;
