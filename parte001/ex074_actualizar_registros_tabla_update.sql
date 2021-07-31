-- 1. Elimine la tabla si existe:
DROP TABLE IF EXISTS agenda;

-- 2. Cree la tabla:
CREATE TABLE agenda (
    apellido VARCHAR(30),
    nombre VARCHAR(20),
    domicilio VARCHAR(30),
    telefono VARCHAR(11)
);

-- 3. Visualice la estructura de la tabla "agenda" (describe):
DESCRIBE agenda;

-- 4. Ingrese los siguientes registros (insert into):
INSERT INTO agenda VALUES 
('Mores', 'Alberto', 'Colon 123', '4234567');
INSERT INTO agenda VALUES 
('Torres', 'Juan', 'Avellaneda 135', '4458787');
INSERT INTO agenda VALUES 
('Lopez', 'Mariana', 'Urquiza 333', '4545454');
INSERT INTO agenda VALUES 
('Lopez', 'Jose', 'Urquiza 333', '4545454');
INSERT INTO agenda VALUES 
('Peralta', 'Susana', 'Gral. Paz 1234', '4123456');

SELECT * FROM agenda;

-- 5. Modifique el registro cuyo nombre sea "Juan" por "Juan Jose"(update- where):
UPDATE agenda SET nombre = 'Juan Jose' WHERE nombre = 'Juan';

SELECT * FROM agenda;

-- 6. Actualice los registros cuyo número telefónico sea igual a '4545454' por '4445566':
UPDATE agenda SET telefono = '4445566' WHERE telefono = '4545454';

SELECT * FROM agenda;

-- 7. Actualice los registros que tengan en el campo "nombre" el valor "Juan" por "Juan Jose" 
-- (ningún registro afectado porque ninguno cumple con la condición del "where"):
UPDATE agenda SET nombre = 'Juan Jose' WHERE nombre = 'Juan';

SELECT * FROM agenda;
