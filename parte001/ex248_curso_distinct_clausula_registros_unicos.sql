-- 1. Elimine la tabla "cursos", si existe:
DROP TABLE IF EXISTS cursos;

-- 2. Cree la tabla "cursos" con la siguiente estructura:
 create table cursos(
  codigo TINYINT UNSIGNED AUTO_INCREMENT
  tema VARCHAR(20) NOT NULL,
  horario char(2) NOT NULL,
  clases TINYINT UNSIGNED DEFAULT 10,
  fechainicio DATE,
  costo DECIMAL(5,2) UNSIGNED,
  PRIMARY KEY(codigo)
 );

-- 3. Ingrese los siguientes registros:
 INSERT INTO cursos (tema,horario,clases,fechainicio,costo)
  VALUES ('PHP básico','AM',10,'2006-08-07',200);
 INSERT INTO cursos (tema,horario,clases,fechainicio,costo)
  VALUES ('PHP básico','PM',DEFAULT,'2006-08-14',200);
 INSERT INTO cursos (tema,horario,clases,fechainicio,costo)
  VALUES ('PHP básico','AM',DEFAULT,'2006-08-05',200);
 INSERT INTO cursos (tema,horario,clases,fechainicio,costo)
  VALUES ('PHP avanzado','AM',20,'2006-08-01',350);
 INSERT INTO cursos (tema,horario,clases,fechainicio,costo)
  VALUES ('JavaScript básico','PM',15,'2006-09-11',150);
 INSERT INTO cursos (tema,horario,clases,fechainicio,costo)
  VALUES ('Paginas web','PM',15,'2006-08-08',200);
 INSERT INTO cursos (tema,horario,clases,fechainicio,costo)
  VALUES ('Paginas web','AM',15,'2006-08-12',200);
 INSERT INTO cursos (tema,horario,clases,fechainicio,costo)
  VALUES ('Paginas web','AM',15,'2006-08-21',200);
 INSERT INTO cursos (tema,horario,clases,fechainicio,costo)
  VALUES ('HTML avanzado','AM',20,'2006-09-18',180);
 INSERT INTO cursos (tema,horario,clases,fechainicio,costo)
  VALUES ('HTML avanzado','PM',20,'2006-09-25',180);
 INSERT INTO cursos (tema,horario,clases,fechainicio,costo)
  VALUES ('JavaScript avanzado','PM',25,'2006-09-18',150);

-- 4. Obtenga la lista de temas de los cursos sin repetición:
SELECT DISTINCT tema FROM cursos;

-- 5. Seleccione los cursos donde el tema incluya "PHP", sin repetir horario ni tema:
SELECT DISTINCT horario, tema
FROM cursos 
WHERE tema LIKE '%PHP%';

-- 6. Cuente la cantidad de cursos DISTINTOS agrupados por horario:
SELECT horario, COUNT(DISTINCT tema)
FROM cursos
GROUP BY horario;
