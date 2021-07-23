-- 1. Elimine "agenda", si existe:
DROP TABLE IF EXISTS agenda;

-- 2. Cree la tabla, con los siguientes campos: apellido (cadena de 30), nombre (cadena de 20),
-- domicilio (cadena de 30) y telefono (cadena de 11).
CREATE TABLE agenda (
    apellido VARCHAR (30),
    nombre VARCHAR(20),
    domicilio VARCHAR(30),
    telefono VARCHAR(11)
);

-- 3. Visualice la estructura de la tabla.
DESCRIBE agenda;

-- 4. Ingrese los siguientes registros:
INSERT INTO agenda VALUES 
('Mores', 'Alberto', 'Colon 123', '4234567');
INSERT INTO agenda VALUES 
('Torres', 'Juan', 'Avellaneda 135', '4458787');
INSERT INTO agenda VALUES 
('Lopez', 'Mariana', 'Urquiza 333', '4545454');
INSERT INTO agenda VALUES 
('Lopez', 'Fernando', 'Urquiza 333', '4545454');
INSERT INTO agenda VALUES 
('Suarez', 'Mariana', 'Sarmiento 643', '4445544');
INSERT INTO agenda VALUES 
('Lopez', 'Ana', 'Sucre 309', '4252587');

-- 5. Seleccione todos los registros de la tabla:
SELECT * FROM agenda;

-- 6. Seleccione los amigos cuyo apellido sea 'Lopez':
SELECT * FROM agenda 
WHERE apellido = 'Lopez';

-- 7. Seleccione los registros cuyo nombre NO sea 'Mariana':
SELECT * FROM agenda 
WHERE nombre <> 'Mariana';

-- 8. Seleccione los registros cuyo domicilio sea 'Colon 123':
SELECT * FROM agenda 
WHERE domicilio = 'Colon 123';

-- 9. Muestre los datos de quienes tengan el teléfono '4545454':
SELECT * FROM agenda 
WHERE  telefono = '4545454';
