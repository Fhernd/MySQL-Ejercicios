-- 1. Elimine la tabla:
DROP TABLE IF EXISTS libros;

-- 2. Créela con los siguientes campos: titulo (cadena de 20 caracteres de longitud), 
-- autor (cadena de 30), editorial (cadena de 15) y precio (float).
CREATE TABLE libros (
    codigo INT,
    titulo VARCHAR(20),
    autor VARCHAR(30),
    editorial VARCHAR(15),
    precio FLOAT,
    PRIMARY KEY(codigo)
);

-- 3. Visualice la estructura de la tabla "libros":
DESCRIBE libros;

-- 4. Ingrese los siguientes registros:
INSERT INTO libros VALUES (1, 'El aleph', 'Borges', 'Planeta', 15);
INSERT INTO libros VALUES (2, 'Martin Fierro', 'Jose Hernandez', 'Emece', 25.50);
INSERT INTO libros VALUES (3, 'Aprenda PHP', 'Mario Molina', 'Emece', 26.80);
INSERT INTO libros VALUES (4, 'Cervantes y el quijote', 'Borges', 'Paidos', 45.50);
INSERT INTO libros VALUES (5, 'Matematica estas ahi', 'Paenza', 'Paidos', 50.00);

-- 5. Muestre todos los registros:
SELECT * FROM libros;

-- 6. Ingrese un registro con código no repetido y nombre de autor repetido:
INSERT INTO libros VALUES (6, 'Algebra para principiantes', 'Paenza', 'Paidos', 10);

-- 7. Ingrese un registro con código no repetido y título y editorial repetidos:
INSERT INTO libros VALUES (7, 'Matematica estas ahi', 'Paenza', 'Paidos', 10);

-- 8. Intente ingresar un registro que repita el campo clave (aparece mensaje de error 
-- por clave repetida):
INSERT INTO libros VALUES (7, 'Introduccion al calculo diferencial', 'Paenza', 'Paidos', 10);
