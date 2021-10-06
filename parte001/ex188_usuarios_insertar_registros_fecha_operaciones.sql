-- 1. Elimine la tabla, si existe:
DROP TABLE IF EXISTS usuarios;

-- 2. Cree la tabla:
CREATE TABLE usuarios (
    documento CHAR(8) NOT NULL PRIMARY KEY,
    monto_pagar DECIMAL(8,2) UNSIGNED NOT NULL,
    fecha_vencimiento DATE NOT NULL
);

-- 3. Ingrese algunos registros con fechas de vencimiento anterior a la fecha actual (vencidas) y 
-- posteriores a la fecha actual (no vencidas).
-- 2021/10/06:
INSERT INTO usuarios VALUES ('10000001', 1000, '2021/09/10');
INSERT INTO usuarios VALUES ('10000002', 2000, '2021/09/11');
INSERT INTO usuarios VALUES ('10000003', 3000, '2021/09/12');
INSERT INTO usuarios VALUES ('10000004', 4000, '2021/10/10');
INSERT INTO usuarios VALUES ('10000005', 5000, '2021/10/11');
INSERT INTO usuarios VALUES ('10000006', 5000, '2021/10/12');
