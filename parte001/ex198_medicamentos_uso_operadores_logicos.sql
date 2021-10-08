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

-- 4. Ingrese los siguientes registros (INSERT INTO):
 INSERT INTO medicamentos (nombre, laboratorio,precio,cantidad)
  VALUES('Sertal','Roche',5.2,100);
 INSERT INTO medicamentos (nombre, laboratorio,precio,cantidad)
  VALUES('Buscapina','Roche',4.10,200);
 INSERT INTO medicamentos (nombre, laboratorio,precio,cantidad)
  VALUES('Amoxidal 500','Bayer',15.60,100);
 INSERT INTO medicamentos (nombre, laboratorio,precio,cantidad)
  VALUES('Paracetamol 500','Bago',1.90,200);
 INSERT INTO medicamentos (nombre, laboratorio,precio,cantidad)
  VALUES('Bayaspirina','Bayer',2.10,150); 
 INSERT INTO medicamentos (nombre, laboratorio,precio,cantidad)
  VALUES('Amoxidal jarabe','Bayer',5.10,250); 

-- 5. Recupere los códigos y nombres de los medicamentos cuyo laboratorio sea 'Roche' y cuyo precio 
-- sea menor a 5:
SELECT codigo, nombre FROM medicamentos WHERE laboratorio = 'Roche' AND precio < 5;

-- 6. Recupere los medicamentos cuyo laboratorio sea 'Roche' o cuyo precio sea menor a 5:
SELECT * FROM medicamentos WHERE laboratorio = 'Roche' OR precio < 5;

-- 7. Muestre todos los registros que no sean de "Bayer" usando el operador "not"
SELECT * FROM medicamentos WHERE NOT (laboratorio = 'Bayer');

-- 8. Muestre todos los medicamentos cuyo laboratorio NO sea "Bayer" y cuya cantidad sea=100:
SELECT * FROM medicamentos WHERE NOT (laboratorio = 'Bayer') AND cantidad = 100;

-- 9. Muestre todos los medicamentos cuyo laboratorio sea "Bayer" y cuya cantidad NO sea=100:
SELECT * FROM medicamentos WHERE laboratorio = 'Bayer' AND NOT (cantidad = 100);

-- 10. Elimine todos los registros cuyo laboratorio sea igual a "Bayer" y su precio sea mayor a 10:
DELETE FROM medicamentos WHERE laboratorio = 'Bayer' AND precio > 10;

-- 11. Cambie la cantidad por 200, a todos los medicamentos de "Roche" cuyo precio sea mayor a 5:
UPDATE medicamentos SET cantidad = 200 WHERE laboratorio = 'Roche' AND precio < 5;

-- 12. Borre los medicamentos cuyo laboratorio sea "Bayer" o cuyo precio sea menor a 3. Antes veamos 
-- cuáles cumplen con la condición, los registros 5 y 6 son de "Bayer, cumplen con la primera 
-- condición, los registros 4 y 5 cumplen con la segunda condición, es decir, se borrarán 3 registros: 
-- el 4 porque cumple con la segunda condición, el 5 porque cumple con ambas y el 6 porque cumple con 
-- la primera. Tipeamos:
DELETE FROM medicamentos WHERE laboratorio = 'Bayer' OR precio < 3;

SELECT * FROM medicamentos;
