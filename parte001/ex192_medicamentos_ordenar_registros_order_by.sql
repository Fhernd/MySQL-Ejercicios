-- 1. Elimine la tabla, si existe:
DROP TABLE IF EXISTS medicamentos;

-- 2. Cree la tabla con la siguiente estructura:
 CREATE TABLE medicamentos(
  codigo INT unsigned auto_increment,
  nombre VARCHAR(20),
  laboratorio VARCHAR(20),
  precio DECIMAL(5,2),
  cantidad INT unsigned,
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

-- 5. Ordene los registros por precio, de mayor a menor:
SELECT * FROM medicamentos ORDER BY precio DESC;

-- 6. Ordene los medicamentos por número del campo "cantidad":
SELECT * FROM medicamentos ORDER BY 5;

-- 7. Ordene los registros por "laboratorio" (descendente) y cantidad (ascendente):
SELECT * FROM medicamentos ORDER BY laboratorio DESC, cantidad ASC;
