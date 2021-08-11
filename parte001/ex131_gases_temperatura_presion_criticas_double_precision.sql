-- 1. Elimine la tabla "gases" si existe
DROP TABLE IF EXISTS gases;

-- 2. Cree la tabla eligiendo el tipo de dato adecuado para almacenar los datos descriptos arriba:
-- - ciudad y país: cadena de caracteres,
-- - temperaturas (máxima y mínima): entero desde -20 hasta 40 aprox.
-- - precipitaciones media anual: desde 0 a 2000 aprox.
CREATE TABLE gases(
    codigo INT AUTO_INCREMENT,
    gas VARCHAR(24) NOT NULL,
    temperatura_critica DOUBLE(6,2) NOT NULL,
    presion_critica DOUBLE(6,2) UNSIGNED NOT NULL,
    PRIMARY KEY(codigo)
);

DESCRIBE gases;
