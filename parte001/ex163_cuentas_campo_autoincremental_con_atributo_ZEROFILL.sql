-- 1. Elimine la tabla, si existe:
DROP TABLE IF EXISTS cuentas;

-- 2. Cree la tabla:
 CREATE TABLE cuentas(
  numero INT(8) ZEROFILL AUTO_INCREMENT,
  documento CHAR(8) NOT NULL,
  nombre VARCHAR(30),
  saldo DECIMAL(9,2),
  PRIMARY KEY(numero)
 );

-- 3. Visualice la estructura de la tabla:
DESCRIBE cuentas;
-- note que en la columna que muestra el tipo aparece "zerofill" en el campo "numero".

-- 4. Ingrese los siguientes registros:
 INSERT INTO cuentas (numero,documento,nombre,saldo)
   VALUES(1234,'22333444','Juan Perez',2000.60);
 INSERT INTO cuentas (numero,documento,nombre,saldo)
   VALUES(2566,'23333444','Maria Pereyra',5050);
 INSERT INTO cuentas (numero,documento,nombre,saldo)
   VALUES(5987,'24333444','Marcos Torres',200);
 INSERT INTO cuentas (numero,documento,nombre,saldo)
   VALUES(14434,'25333444','Ana Juarez',8000.60);

-- 5 Vea cómo se guardaron los números de cuenta:
 SELECT * FROM cuentas;

-- 6. Ingrese un valor negativo para el número de cuenta:
 INSERT INTO cuentas (numero,documento,nombre,saldo)
  VALUES(-1234,'27333444','Luis Duarte',2800);
-- note que no lo toma y sigue la secuencia.

 SELECT * FROM cuentas;