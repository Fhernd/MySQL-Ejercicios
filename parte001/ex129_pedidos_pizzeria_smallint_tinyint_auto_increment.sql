-- 1. Elimine la tabla "pedidos" si existe:
DROP TABLE IF EXISTS pedidos;

-- 2. Cree la tabla eligiendo el tipo de dato adecuado para cada campo:
CREATE TABLE pedidos(
    numero TINYINT UNSIGNED AUTO_INCREMENT,
    nombre VARCHAR(8) NOT NULL,
    tipo VARCHAR(16) NOT NULL,
    precio DECIMAL(4, 2) NOT NULL,
    cantidad TINYINT UNSIGNED NOT NULL,
    domicilio VARCHAR(32),
    PRIMARY KEY(numero)
);

DESCRIBE pedidos;
