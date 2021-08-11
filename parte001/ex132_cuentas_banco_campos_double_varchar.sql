-- 1. Elimine la tabla "cuentas" si existe:
DROP TABLE IF EXISTS cuentas;

-- 2. Cree la tabla eligiendo el tipo de dato adecuado para almacenar los datos descriptos arriba: 
-- - Número de cuenta: entero positivo, no nulo, 
-- - Documento del propietario de la cuenta: cadena de caracteres de 8 de longitud (siempre 8), no nulo 
-- - Nombre del propietario de la cuenta: cadena de caracteres, 
-- - Saldo de la cuenta: valores positivos y negativos altos:
CREATE TABLE cuentas(
    numero_cuenta INT UNSIGNED PRIMARY KEY,
    documento_propietario VARCHAR(8) NOT NULL,
    nombre_propietario VARCHAR(48) NOT NULL,
    saldo DOUBLE NOT NULL
);

DESCRIBE cuentas;
