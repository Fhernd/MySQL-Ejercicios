-- 1. Elimine la tabla si existe:
DROP TABLE IF EXISTS usuarios;

-- 2. Cree la tabla:
CREATE TABLE usuarios (
  nombre VARCHAR(30),
  clave VARCHAR(10)
 );

DESCRIBE usuarios;

-- 3. Elimine el campo "clave":
ALTER TABLE usuarios DROP clave;

-- 4. Visualice la estructura de la tabla:
DESCRIBE usuarios;

-- 5. Intente eliminar el único campo de la tabla:
ALTER TABLE usuarios DROP nombre;

DESCRIBE usuarios;
