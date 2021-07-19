-- 1. Eliminamos "agenda", si existe:
DROP TABLE IF EXISTS agenda;

-- 2. Creamos la tabla, con los siguientes campos: 
CREATE TABLE agenda(
    nombre VARCHAR(20),
    domicilio VARCHAR(30),
    telefono VARCHAR(11)
);

-- 3. Visualice la estructura de la tabla "agenda".(describe).
DESCRIBE agenda;

-- 4. Ingrese los siguientes registros:
INSERT INTO agenda VALUES ('Alberto Mores', 'Colon 123', '4234567');
INSERT INTO agenda VALUES ('Juan Torres', 'Avellaneda 135', '4458787');
INSERT INTO agenda VALUES ('Mariana Lopez', 'Urquiza 3333', '4545454');
INSERT INTO agenda VALUES ('Fernando Lopez', 'Urquiza 3333', '4545454');

-- 5. Seleccione todos los registros de la tabla. (select).
SELECT * FROM agenda;

-- 6. Seleccione el registro cuyo nombre sea 'Juan Torres'.
SELECT * FROM agenda WHERE nombre = 'Juan Torres';

-- 7. Seleccione el registro cuyo domicilio sea 'Colon 123'.
SELECT * FROM agenda WHERE domicilio = 'Colon 123';

-- 8. Muestre los datos de quienes tengan el teléfono '4545454'.
SELECT * FROM agenda WHERE telefono = '4545454';

-- 9. Elimine la tabla "agenda":
DROP TABLE IF EXISTS agenda;
