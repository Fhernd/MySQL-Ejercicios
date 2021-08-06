-- 1. Elimine la tabla si existe:
DROP TABLE IF EXISTS peliculas;

-- 3. Créela con la siguiente estructura:
CREATE TABLE peliculas(
    codigo INTEGER AUTO_INCREMENT,
    titulo VARCHAR(30) NOT NULL,
    actor VARCHAR(20),
    duracion INTEGER UNSIGNED,
    PRIMARY KEY (codigo)
);

-- 4. Visualice la estructura de la tabla:
DESCRIBE peliculas;
