-- 1. Elimine la tabla si existe. (drop table- if exists):
DROP TABLE IF EXISTS libros;

-- 2. Cree la tabla "libros". Debe tener la siguiente estructura:
CREATE TABLE libros (
    titulo VARCHAR(20),
    autor VARCHAR(30),
    editorial VARCHAR(15)
);

-- 3. Cree la tabla "libros". Debe tener la siguiente estructura:
DESCRIBE libros;

-- 4. Ingrese los siguientes registros:
INSERT INTO libros VALUES ('El aleph', 'Borges', 'Planeta');
INSERT INTO libros VALUES ('Martin Fierro', 'Jose Hernandez', 'Emece');
INSERT INTO libros VALUES ('Aprenda PHP', 'Mario Molina', 'Emece');
INSERT INTO libros VALUES ('Cervantes', 'Borges', 'Paidos');

-- 5. Muestre todos los registros. (select):
SELECT * FROM libros;

-- 6. Seleccione los registros cuyo autor sea 'Borges':
SELECT * FROM libros WHERE autor = 'Borges';

-- 7. Seleccione los registros cuya editorial sea 'Emece':
SELECT * FROM libros WHERE editorial = 'Emece';

-- 8. Seleccione los libros cuyo titulo sea 'Martin Fierro':
SELECT * FROM libros WHERE titulo = 'Martin Fierro';

-- 9. Elimine la tabla "libros":
DROP TABLE IF EXISTS libros;
