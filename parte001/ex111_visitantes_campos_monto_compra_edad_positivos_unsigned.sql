-- 1. Elimine la tabla "visitantes", si existe:
DROP TABLE IF EXISTS visitantes;

-- 2. Cree la tabla y al definir los campos tenga en cuenta el rango de valores que almacenará cada 
-- campo:
CREATE TABLE visitantes (
    codigo INTEGER PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30),
    edad INTEGER UNSIGNED,
    sexo VARCHAR(1),
    domicilio VARCHAR(30),
    ciudad VARCHAR(30),
    telefono VARCHAR(11),
    monto_compra FLOAT UNSIGNED
);

-- 3. Visualice la estructura de la tabla:
DESCRIBE visitantes;
