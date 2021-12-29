-- 1. Elimine la tabla si existe:
DROP TABLE IF EXISTS inmuebles;

-- 2. Cree la tabla:
CREATE TABLE inmuebles(
  codigo INT UNSIGNED AUTO_INCREMENT,
  domicilio VARCHAR(30),
  barrio VARCHAR(20),
  detalles TEXT,
  PRIMARY KEY(codigo)
 );

-- 3. Ingrese algunos registros:
 INSERT INTO inmuebles VALUES (1,'Colon 123','Centro','patio, 3 dormitorios, garage doble, pileta, 
asador, living, cocina, comedor, escritorio, 2 baños');
 INSERT INTO inmuebles VALUES (2,'Caseros 345','Centro','patio, 2 dormitorios, cocina- comedor, 
living');
 INSERT INTO inmuebles VALUES (3,'Sucre 346','Alberdi','2 dormitorios, problemas de humedad');
 INSERT INTO inmuebles VALUES (4,'Sarmiento 832','Gral. Paz','3 dormitorios, garage, 2 patios');
 INSERT INTO inmuebles VALUES (5,'Avellaneda 384','Centro',' 2 patios, 2 dormitorios, garage');

-- 4. Busque todos los inmuebles que tengan "patio":
SELECT * FROM inmuebles WHERE detalles LIKE '%patio%';
