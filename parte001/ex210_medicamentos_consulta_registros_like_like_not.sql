-- 1. Elimine la tabla, si existe:
DROP TABLE IF EXISTS medicamentos;

-- 2. Cree la tabla con la siguiente estructura:
CREATE TABLE medicamentos(
  codigo INT UNSIGNED AUTO_INCREMENT,
  nombre VARCHAR(20),
  laboratorio VARCHAR(20),
  precio DECIMAL(5,2),
  cantidad INT UNSIGNED,
  PRIMARY KEY(codigo)
 );

-- 3. Visualice la estructura de la tabla "medicamentos":
DESCRIBE medicamentos;

-- 4- Ingrese los siguientes registros:
 INSERT INTO medicamentos (nombre, laboratorio,precio)
  VALUES('Sertal gotas','Roche',5.2);
 INSERT INTO medicamentos (nombre, laboratorio,precio)
  VALUES('Buscapina','Roche',4.10);
 INSERT INTO medicamentos (nombre, laboratorio,precio)
  VALUES('Amoxidal 500','Bayer',15.60);
 INSERT INTO medicamentos (nombre, laboratorio,precio)
  VALUES('Paracetamol 500','Bago',1.90);
 INSERT INTO medicamentos (nombre, laboratorio,precio)
  VALUES('Bayaspirina','Bayer',2.10); 
 INSERT INTO medicamentos (nombre, laboratorio,precio)
  VALUES('Amoxidal jarabe','Bayer',5.10); 
 INSERT INTO medicamentos (nombre, laboratorio,precio)
  VALUES('Sertal compuesto','Bayer',5.10); 
 INSERT INTO medicamentos (nombre, laboratorio,precio)
  VALUES('Paracetamol 1000','Bago',2.90);
 INSERT INTO medicamentos (nombre, laboratorio,precio)
  VALUES('Amoxinil','Roche',17.80);

-- 5. Recupere los medicamentos cuyo nombre comiencen con "Amox":
SELECT * FROM medicamentos WHERE nombre LIKE 'Amox%';

-- 6. Recupere los medicamentos "Paracetamol" cuyo precio sea menor a 2:
SELECT * FROM medicamentos WHERE nombre LIKE '%Paracetamol%' AND precio < 2;

-- 7. Busque todos los medicamentos cuyo precio tenga .10 centavos:
SELECT * FROM medicamentos WHERE precio LIKE '%.1%';

-- 8. Muestre todos los medicamentos que no contengan la cadena "compuesto":
SELECT * FROM medicamentos WHERE nombre NOT LIKE '%compuesto%';

-- 9. Elimine todos los registros cuyo laboratorio contenga la letra "y":
DELETE FROM medicamentos WHERE laboratorio LIKE '%y%';

SELECT * FROM medicamentos;

-- 10. Cambie el precio por 5, al "Paracetamol" cuyo precio es mayor a 2:
UPDATE medicamentos SET precio = 5 WHERE nombre LIKE '%Paracetamol%' AND precio < 2;

SELECT * FROM medicamentos;
