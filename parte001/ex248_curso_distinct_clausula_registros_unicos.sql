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
 insert into cursos (tema,horario,clases,fechainicio,costo)
  values('PHP básico','AM',10,'2006-08-07',200);
 insert into cursos (tema,horario,clases,fechainicio,costo)
  values('PHP básico','PM',default,'2006-08-14',200);
 insert into cursos (tema,horario,clases,fechainicio,costo)
  values('PHP básico','AM',default,'2006-08-05',200);
 insert into cursos (tema,horario,clases,fechainicio,costo)
  values('PHP avanzado','AM',20,'2006-08-01',350);
 insert into cursos (tema,horario,clases,fechainicio,costo)
  values('JavaScript básico','PM',15,'2006-09-11',150);
 insert into cursos (tema,horario,clases,fechainicio,costo)
  values('Paginas web','PM',15,'2006-08-08',200);
 insert into cursos (tema,horario,clases,fechainicio,costo)
  values('Paginas web','AM',15,'2006-08-12',200);
 insert into cursos (tema,horario,clases,fechainicio,costo)
  values('Paginas web','AM',15,'2006-08-21',200);
 insert into cursos (tema,horario,clases,fechainicio,costo)
  values('HTML avanzado','AM',20,'2006-09-18',180);
 insert into cursos (tema,horario,clases,fechainicio,costo)
  values('HTML avanzado','PM',20,'2006-09-25',180);
 insert into cursos (tema,horario,clases,fechainicio,costo)
  values('JavaScript avanzado','PM',25,'2006-09-18',150);

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
