-- 1. Elimine la tabla:
DROP TABLE IF EXISTS libros;

-- 2. Créela con los siguientes campos: titulo (cadena de 20 caracteres de longitud), 
-- autor (cadena de 30), editorial (cadena de 15) y precio (float).
CREATE TABLE libros (
    titulo VARCHAR(20),
    autor VARCHAR(30),
    editorial VARCHAR(15),
    precio FLOAT
);

-- 3. Visualice la estructura de la tabla "libros":
DESCRIBE libros;

-- 4. Ingrese los siguientes registros:
INSERT INTO libros VALUES ('El aleph', 'Borges', 'Planeta', 15);
INSERT INTO libros VALUES ('Martin Fierro', 'Jose Hernandez', 'Emece', 25.50);
INSERT INTO libros VALUES ('Aprenda PHP', 'Mario Molina', 'Emece', 26.80);
INSERT INTO libros VALUES ('Cervantes y el quijote', 'Borges', 'Paidos', 45.50);
INSERT INTO libros VALUES ('Matematica estas ahi', 'Paenza', 'Paidos', 50.00);

-- 5. Muestre todos los registros:
SELECT * FROM libros;

-- 6. Elimine los registros cuyo autor sea igual a 'Paenza'. (1 registro eliminado):
DELETE FROM libros WHERE autor = 'Paenza';

SELECT * FROM libros;

-- 7. Nuevamente, elimine los registros cuyo autor sea igual a 'Paenza'. (ningún registro afectado)
DELETE FROM libros WHERE autor = 'Paenza';

-- 8. Borre los registros cuyo precio sea menor a 20.(<20):
DELETE FROM libros WHERE precio < 20;

SELECT * FROM libros;

-- 9. Borre los registros que cuyo precio sea mayor o igual a 40 pesos. (>=):
DELETE FROM libros WHERE precio >= 40;

SELECT * FROM libros;

-- 10. Elimine todos los registros de la tabla:
DELETE FROM libros;

SELECT * FROM libros;
