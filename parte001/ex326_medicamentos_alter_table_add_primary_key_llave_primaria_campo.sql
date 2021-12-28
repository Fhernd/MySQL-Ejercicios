-- 1. Elimine la tabla, si existe:
DROP TABLE IF EXISTS medicamentos;

-- 2. Cree la tabla con la siguiente estructura:
 CREATE TABLE medicamentos(
  codigo INT UNSIGNED NOT NULL,
  nombre VARCHAR(20) NOT NULL,
  laboratorio VARCHAR(20),
  precio DECIMAL(6,2) UNSIGNED
);

-- 3. Visualice la estructura de la tabla "medicamentos":
DESCRIBE medicamentos;

-- 4. Agregue una clave primaria por "codigo":
ALTER TABLE medicamentos ADD PRIMARY KEY (codigo);

-- 5. Para solucionar esto podemos modificar el campo convirtiéndolo en autoincrementable:
ALTER TABLE medicamentos MODIFY codigo INT UNSIGNED AUTO_INCREMENT;

DESCRIBE medicamentos;

-- 6. Veamos los registros:
SELECT * FROM medicamentos;

-- 7. Ingrese más registros:
 INSERT INTO medicamentos (nombre, laboratorio,precio)
  VALUES ('Paracetamol 500','Bago',1.90);
 INSERT INTO medicamentos (nombre, laboratorio,precio)
  VALUES ('Bayaspirina','Bayer',2.10);

-- 8. INTente eliminar la clave primaria:
-- ALTER TABLE medicamentos DROP PRIMARY KEY;

-- 9. Modifique el campo "codigo" quitándole el atributo "auto_increment":
ALTER TABLE medicamentos MODIFY codigo INT UNSIGNED;

-- 10. Elimine la clave primaria:
ALTER TABLE medicamentos DROP PRIMARY KEY;

DESCRIBE medicamentos;
