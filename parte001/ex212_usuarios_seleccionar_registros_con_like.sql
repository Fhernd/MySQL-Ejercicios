-- 1. Elimine la tabla, si existe:
DROP TABLE IF EXISTS usuarios;

-- 2. Créela con la siguiente estructura:

CREATE TABLE usuarios(
    nombre VARCHAR(20),
    clave VARCHAR(10),
    PRIMARY KEY(clave));

-- 3. Visualice la estructura de la tabla "usuarios":
DESCRIBE usuarios;

-- 4. Ingrese los siguientes registros:
 INSERT INTO usuarios (nombre, clave) VALUES ('Leonardo','payaso');
 INSERT INTO usuarios (nombre, clave) VALUES ('MarioPerez','Marito');
 INSERT INTO usuarios (nombre, clave) VALUES ('Marcelo','River');
 INSERT INTO usuarios (nombre, clave) VALUES ('Gustavo','Boca');
 INSERT INTO usuarios (nombre, clave) VALUES ('MarcosMercado','RealMadrid');
 INSERT INTO usuarios (nombre, clave) VALUES ('Susana','chapita');
 INSERT INTO usuarios (nombre, clave) VALUES ('Gonzalo','Z80');
 INSERT INTO usuarios (nombre, clave) VALUES ('GustavoPereyra','RealMadryd');

-- 5. Busque los registros cuya clave contenga sólo 5 letras:
SELECT * FROM usuarios
WHERE clave LIKE '_____';

-- 6. Busque los registros cuyo nombre de usuario termine con "o":
SELECT * FROM usuarios
WHERE nombre LIKE '%n';
