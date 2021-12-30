-- 1. Elimine la tabla "luz", si existe:
DROP TABLE IF EXISTS luz;

-- 2. Cree la tabla:
CREATE TABLE luz(
  documento CHAR(8) NOT NULL,
  domicilio VARCHAR(30),
  monto DECIMAL(5,2) UNSIGNED,
  vencimiento DATE
);

-- 3. Ingrese algunos registros con fechas de vencimiento anterior a la fecha actual (vencidas) y 
-- posteriores a la fecha actual (no vencidas):
INSERT INTO luz VALUES ('12345678', 'Calle 1', 100, '2021-05-03');
INSERT INTO luz VALUES ('22345678', 'Calle 2', 200, '2021-06-03');
INSERT INTO luz VALUES ('32345678', 'Calle 3', 150, '2021-07-03');
INSERT INTO luz VALUES ('42345678', 'Calle 4', 250, '2021-06-05');
INSERT INTO luz VALUES ('52345678', 'Calle 5', 130, '2021-04-15');

INSERT INTO luz VALUES ('62345678', 'Calle 6', 220, '2029-05-03');
INSERT INTO luz VALUES ('72345678', 'Calle 7', 200, '2029-06-03');
INSERT INTO luz VALUES ('82345678', 'Calle 8', 150, '2029-07-03');
INSERT INTO luz VALUES ('92345678', 'Calle 9', 250, '2029-06-05');
INSERT INTO luz VALUES ('02345678', 'Calle 10', 130, '2029-04-15');

-- 4. Ingrese para el mismo usuario (igual documento) 2 boletas vencidas.
INSERT INTO luz VALUES ('12345678', 'Calle 1', 100, '2021-06-03');
INSERT INTO luz VALUES ('12345678', 'Calle 1', 100, '2021-07-03');

-- 5. Muestre el documento del usuario, la fecha de vencimiento, la fecha actual (en que efectúa el 
-- pago) y si debe pagar recargo o no.:
SELECT documento, vencimiento, CURRENT_DATE AS fecha_actual, monto, 
IF(DATEDIFF(CURRENT_DATE, vencimiento) > 0, 'Sí', 'No') AS vencida 
FROM luz;

-- 6. Si un usuario tiene más de una boleta vencida se le corta el servicio. Muestre el documento y la 
-- cantidad de boletas vencidas de cada usuario que tenga boletas vencidas y muestre un 
-- mensaje "Cortar servicio" si tiene 2 o más vencidas:
SELECT documento, COUNT(*), 
IF(COUNT(*) > 1, 'Cortar servicio', '') AS resultado 
FROM luz 
WHERE DATEDIFF(CURRENT_DATE, vencimiento) > 0 
GROUP BY documento;
