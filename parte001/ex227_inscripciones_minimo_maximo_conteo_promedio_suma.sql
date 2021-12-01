-- 1. Elimine la tabla si existe:
DROP TABLE IF EXISTS inscripciones;

-- 2. cree la tabla:
 CREATE TABLE inscripciones(
  nombre VARCHAR(30),
  documento CHAR(8),
  fechainscripto DATE,
  pago DECIMAL(5,2) UNSIGNED NOT NULL
 );

-- 3. Ingrese algunos registros:
 INSERT INTO inscripciones VALUES ('PHP básico', '22333444','2006-08-10',50);
 INSERT INTO inscripciones VALUES ('PHP básico', '23333444','2006-08-10',50);
 INSERT INTO inscripciones VALUES ('PHP básico', '24333444','2006-08-11',30);
 INSERT INTO inscripciones VALUES ('PHP experto', '25333444','2006-08-11',0);
 INSERT INTO inscripciones VALUES ('PHP experto', '26333444','2006-08-12',200);
 INSERT INTO inscripciones VALUES ('JavaScript básico', '22333444','2006-08-10',100);
 INSERT INTO inscripciones VALUES ('Operador de PC', '27333444','2006-08-12',10);
 INSERT INTO inscripciones VALUES ('Operador de PC', '28333444','2006-08-13',50);
 INSERT INTO inscripciones VALUES ('Operador de PC', '29333444','2006-08-14',40);
 INSERT INTO inscripciones VALUES ('Operador de PC', '30333444','2006-08-14',0);
 INSERT INTO inscripciones VALUES ('Diseño web', '29333444','2006-08-14',200);
 INSERT INTO inscripciones VALUES ('Diseño web', '30333444','2006-08-14',0);

-- 4. calcule la cantidad de inscriptos para el curso de "Operador de PC":
SELECT COUNT(*) FROM inscripciones WHERE nombre = 'Operador de PC';

-- 5. Calcule la suma recaudada por los pagos de los cursos el día "2006-08-10":
SELECT SUM(pago) FROM inscripciones WHERE fechainscripto = '2006-08-10';

-- 6. Calcule el promedio de los pagos de los inscriptos:
SELECT AVG(pago) FROM inscripciones WHERE pago <> 0;

-- 7. Muestre el máximo y el mínimo valor de pago, sin considerar quienes no pagan:
SELECT MAX(pago), MIN(pago) FROM inscripciones WHERE pago > 0;

-- 8. Vea en cuántos cursos se inscribió el alumno con documento "22333444" y cuánto abonó en total:
SELECT COUNT(*) FROM inscripciones WHERE documento = '22333444';
