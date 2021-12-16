-- 1. Eliminamos la tabla "alumnos" si existe:
DROP TABLE IF EXISTS alumnos;

-- 2. Creamos la tabla:
 CREATE TABLE alumnos(
  documento CHAR(8) NOT NULL,
  nombre VARCHAR(30),
  domicilio VARCHAR(30),
  ciudad VARCHAR(20),
  provincia VARCHAR(20),
  PRIMARY KEY(documento)
 );

-- 3. Agregamos varios registros:
 INSERT INTO alumnos VALUES ('22333444','Juan Perez','Colon 123','Cordoba','Cordoba');
 INSERT INTO alumnos VALUES ('23456789','Ana Acosta','Caseros 456','Cordoba','Cordoba');
 INSERT INTO alumnos VALUES ('24123123','Patricia Morales','Sucre 234','Villa del Rosario','Cordoba');
 INSERT INTO alumnos VALUES ('25000333','Jose Torres','Sarmiento 980','Carlos Paz','Cordoba');
 INSERT INTO alumnos VALUES ('26333444','Susana Molina','Avellaneda 234','Rosario','Santa Fe');
 INSERT INTO alumnos VALUES ('27987654','Marta Herrero','San Martin 356','Villa del 
Rosario','Cordoba');
 INSERT INTO alumnos VALUES ('28321321','Marcos Ferreyra','Urquiza 357','Cordoba','Cordoba');
 INSERT INTO alumnos VALUES ('30987464','Marta Perez','Rivadavia 234','Cordoba','Cordoba');

-- 4. El instituto quiere tomar 3 alumnos al azar para que representen al instituto en una feria de 
-- ciencias. Para recuperar de una tabla registros aleatorios se puede utilizar la función "rand()" 
-- combinada con "order by" y "limit":
SELECT * FROM alumnos ORDER BY RAND() LIMIT 3;

-- 5. Nos devuelve los nombres y documentos de 3 alumnos tomados al azar de la tabla "alumnos". Podemos 
-- ejecutar la sentencia anterior varias veces seguidas y veremos que los registros recuperados son 
-- diferentes en cada ocasión:
SELECT nombre, documento FROM alumnos ORDER BY RAND() LIMIT 3;
SELECT nombre, documento FROM alumnos ORDER BY RAND() LIMIT 3;
SELECT nombre, documento FROM alumnos ORDER BY RAND() LIMIT 3;
SELECT nombre, documento FROM alumnos ORDER BY RAND() LIMIT 3;
SELECT nombre, documento FROM alumnos ORDER BY RAND() LIMIT 3;
