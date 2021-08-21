-- 1. Elimine la tabla si existe:
DROP TABLE IF EXISTS peliculas;

-- 2. Créela con la siguiente estructura:
CREATE TABLE peliculas (
    codigo INT UNSIGNED AUTO_INCREMENT,
    titulo VARCHAR(15) NOT NULL,
    actor VARCHAR(20),
    duracion TINYINT UNSIGNED,
    PRIMARY KEY (codigo)
);

DESCRIBE peliculas;

-- 3. Ingrese el siguiente registro:
INSERT INTO peliculas VALUES(-10,'Mision imposible','Tom Cruise',120);

-- 4. Muestre los registros para ver qué valor se guardó en "codigo":
SELECT * FROM peliculas;

-- 5. Intente ingresar el siguiente registro (error por clave duplicada):
-- INSERT INTO peliculas VALUES(1,'Mision imposible 2','Tom Cruise',120);

-- 6. Intente ingresar el siguiente registro:
 INSERT INTO peliculas VALUES(NULL,'Mision imposible 2','Tom Cruise',120);

-- 7. Muestre los registros para ver qué valor se guardó en "codigo":
SELECT * FROM peliculas;

-- 8. Intente ingresar el siguiente registro (no ingresa, el campo "título" no admite valores nulos):
-- INSERT INTO peliculas VALUES(3,NULL,'Tom Cruise',120);

SELECT * FROM peliculas;

-- 9. Ingrese el siguiente registro:
INSERT INTO peliculas VALUES(5,'Harry Potter y la camara secreta','Daniel R.',150);

-- 10. Muestre los registros para ver qué se almacenó en "titulo" (cadena cortada):
SELECT * FROM peliculas;

-- 11. Ingrese el siguiente registro:
 INSERT INTO peliculas VALUES(10,'Elsa y Fred','China Zorrilla',12345);

-- 12. Muestre los registros para ver qué se almacenó en "duración" (el valor límite permitido por el 
-- rango más cercano al ingresado).
SELECT * FROM peliculas;
