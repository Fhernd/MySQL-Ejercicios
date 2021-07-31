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

-- 6. Modifique los registros cuyo autor sea igual  a "Paenza", por "Adrian Paenza". 
-- (1 registro afectado).
UPDATE libros SET autor = 'Adrian Paenza' WHERE autor = 'Paenza';

SELECT * FROM libros;

-- 7.  Nuevamente, modifique los registros cuyo autor sea igual  a "Paenza",
-- por "Adrian Paenza". (ningún registro afectado).
UPDATE libros SET autor = 'Adrian Paenza' WHERE autor = 'Paenza';

SELECT * FROM libros;

-- 8. Actualice el precio del libro de "Mario Molina" a 27 pesos:
UPDATE libros SET precio = 27 WHERE autor = 'Mario Molina';

SELECT * FROM libros;

-- 9. Actualice el valor del campo "editorial" por "Emece S.A.", para todos los registros 
-- cuya editorial sea igual a "Emece":
UPDATE libros SET editorial = 'Emece S.A.' WHERE editorial = 'Emece';

SELECT * FROM libros;
