-- 1. Elimine la tabla (drop table) si existe (if exists):
DROP TABLE IF EXISTS agenda;

-- 2. Cree la tabla con los siguientes campos: apellido (cadena de 30), nombre (cadena de 20),
-- domicilio (cadena de 30) y telefono (cadena de 11):
CREATE TABLE agenda (
    apellido VARCHAR(30),
    nombre VARCHAR(20),
    domicilio VARCHAR(30),
    telefono VARCHAR(11)
);

-- 3. Visualice la estructura de la tabla "agenda" (describe):
DESCRIBE agenda;

-- 4. 
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

-- 5. Elimine el registro cuyo nombre sea 'Juan'(delete - where):
DELETE FROM agenda WHERE nombre = 'Juan';

SELECT * FROM agenda;

-- 6. Elimine los registros cuyo número telefónico sea igual a '4545454':
DELETE FROM agenda WHERE telefono = '4545454';

SELECT * FROM agenda;
