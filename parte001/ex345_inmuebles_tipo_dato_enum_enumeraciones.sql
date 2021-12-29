-- 1. Elimine la tabla "inmuebles" si existe:
DROP TABLE IF EXISTS inmuebles;

-- 2. Cree la tabla "inmuebles" para registrar la siguiente información:
--  tipo de inmueble: tipo enum (casa,dpto,local,terreno), not null,
-- domicilio: varchar(30),
-- propietario: nombre del dueño,
-- precio: decimal hasta $999999.99 positivo.
CREATE TABLE inmuebles(
    tipo ENUM ('casa', 'departamento', 'local', 'terreno') NOT NULL,
    domicilio VARCHAR(30),
    propietario VARCHAR(48),
    precio DECIMAL(8,2) UNSIGNED
);

-- 3. Ingrese algunos registros:
INSERT INTO inmuebles VALUES ('departamento', 'Carrera 3ra', 'Luis Pérez', 999.99);
INSERT INTO inmuebles VALUES ('casa', 'Calle 3ra', 'Juan Rodríguez', 9999.99);
INSERT INTO inmuebles VALUES (2, 'Avenida 9na', 'Daniela Gómez', 1235.50);
INSERT INTO inmuebles VALUES (4, 'Vereda Primera', 'Carlos Tovar', 3985.90);

-- 4. Seleccione el domicilio y precio de todos los departamentos en alquiler:
SELECT domicilio, precio FROM inmuebles WHERE tipo = 'departamento';

-- 5. Seleccione el domicilio, propietario y precio de todos los locales en venta:
SELECT domicilio, propietario, precio FROM inmuebles WHERE tipo = 'local';

-- 6. Seleccione el domicilio y precio de todas las casas disponibles:
SELECT domicilio, precio FROM inmuebles WHERE tipo = 1;
