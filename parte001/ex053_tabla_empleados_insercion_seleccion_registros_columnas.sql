-- 1. Elimine la tabla, si existe:
DROP TABLE IF EXISTS empleados;

-- 2. Cree la tabla:
CREATE TABLE empleados (
    nombre VARCHAR(20),
    documento VARCHAR(8),
    sexo VARCHAR(1),
    domicilio VARCHAR(30),
    sueldo_basico FLOAT
);

-- 3. Vea la estructura de la tabla:
DESCRIBE empleados;

-- 4. Ingrese algunos registros:
INSERT INTO empleados (nombre, documento, sexo, domicilio, sueldo_basico)
  VALUES ('Juan Perez','22345678','m','Sarmiento 123',300);
INSERT INTO empleados (nombre, documento, sexo, domicilio, sueldo_basico)
  VALUES ('Ana Acosta','24345678','f','Colon 134',500);
INSERT INTO empleados (nombre, documento, sexo, domicilio, sueldo_basico)
  VALUES ('Marcos Torres','27345678','m','Urquiza 479',800);

-- 5. Muestre todos los datos de los empleados.
SELECT * FROM empleados;

-- 6. Muestre el nombre y documento de los empleados.
SELECT nombre, documento FROM empleados;

-- 7. ealice un "select" mostrando el nombre, documento y sueldo básico de todos los empleados.
SELECT nombre, documento, sueldo_basico FROM empleados;
