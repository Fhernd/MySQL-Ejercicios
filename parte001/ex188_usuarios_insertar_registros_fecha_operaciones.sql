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
-- Fecha de referencia 2021/10/06:
INSERT INTO usuarios VALUES ('10000001', 1000, '2021/09/10');
INSERT INTO usuarios VALUES ('10000002', 2000, '2021/09/11');
INSERT INTO usuarios VALUES ('10000003', 3000, '2021/09/12');
INSERT INTO usuarios VALUES ('10000004', 4000, '2021/10/10');
INSERT INTO usuarios VALUES ('10000005', 5000, '2021/10/11');
INSERT INTO usuarios VALUES ('10000006', 5000, '2021/10/12');

-- 4. Muestre el documento del usuario, la fecha de vencimiento, la fecha actual (en que efectúa el 
-- pago), el monto, la cantidad de días de atraso (respecto de la fecha de vencimiento), el recargo y 
-- el total a pagar con el recargo:
SELECT documento, fecha_vencimiento, 
CURRENT_DATE 'fecha_actual', 
monto_pagar, 
DATEDIFF(fecha_vencimiento, CURRENT_DATE) 'dias_retraso', 
monto_pagar * 0.01 * DATEDIFF(fecha_vencimiento, CURRENT_DATE),
monto_pagar + monto_pagar * 0.01 * DATEDIFF(fecha_vencimiento, CURRENT_DATE) 'total'
FROM usuarios;
