-- 1. Elimine la tabla "estadisticas":
DROP TABLE IF EXISTS estadisticas;

-- 2. Cree la tabla eligiendo el tipo de dato adecuado para almacenar los datos descriptos arriba:
-- - ciudad y país: cadena de caracteres,
-- - temperaturas (máxima y mínima): entero desde -20 hasta 40 aprox.
-- - precipitaciones media anual: desde 0 a 2000 aprox.
CREATE TABLE estadisticas (
    codigo INT AUTO_INCREMENT,
    ciudad VARCHAR(32) NOT NULL,
    pais VARCHAR(32) NOT NULL,
    minima TINYINT NOT NULL,
    maximo TINYINT NOT NULL,
    precipitaciones_media_anual SMALLINT UNSIGNED,
    PRIMARY KEY(codigo)
);

DESCRIBE estadisticas;
