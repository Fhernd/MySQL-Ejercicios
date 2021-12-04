-- 1. Elimine la tabla "empleados" si existe:
DROP TABLE IF EXISTS empleados;

-- 2. Cree la tabla:
CREATE TABLE empleados(
  documento CHAR(8) NOT NULL,
  nombre VARCHAR(30) NOT NULL,
  sexo CHAR(1),
  domicilio VARCHAR(30),
  fechaingreso DATE,
  fechanacimiento DATE,
  sueldobasico DECIMAL(5,2) UNSIGNED,
  PRIMARY KEY(documento)
 );

-- 3. Ingrese algunos registros:
INSERT INTO empleados (documento,nombre,sexo,domicilio,fechaingreso,fechanacimiento,sueldoBasico)
  VALUES ('22333111','Juan Perez','m','Colon 123','1990-02-01','1970-05-10',550);
 INSERT INTO empleados (documento,nombre,sexo,domicilio,fechaingreso,fechanacimiento,sueldoBasico)
  VALUES ('25444444','Susana Morales','f','Avellaneda 345','1995-04-01','1975-11-06',650);
 INSERT INTO empleados (documento,nombre,sexo,domicilio,fechaingreso,fechanacimiento,sueldoBasico)
  VALUES ('20111222','Hector Pereyra','m','Caseros 987','1995-04-01','1965-03-25',510);
 INSERT INTO empleados (documento,nombre,sexo,domicilio,fechaingreso,fechanacimiento,sueldoBasico)
  VALUES ('30000222','Luis Luque','m','Urquiza 456','1980-09-01','1980-03-29',700);
 INSERT INTO empleados (documento,nombre,sexo,domicilio,fechaingreso,fechanacimiento,sueldoBasico)
  VALUES ('20555444','Maria Laura Torres','f','San Martin 1122','2000-05-15','1965-12-22',700);
 INSERT INTO empleados (documento,nombre,sexo,domicilio,fechaingreso,fechanacimiento,sueldoBasico)
  VALUES ('30000234','Alberto Soto','m','Peru 232','2003-08-15','1989-10-10',420);
 INSERT INTO empleados (documento,nombre,sexo,domicilio,fechaingreso,fechanacimiento,sueldoBasico)
  VALUES ('20125478','Ana Gomez','f','Sarmiento 975','2004-06-14','1976-09-21',350);
 INSERT INTO empleados (documento,nombre,sexo,domicilio,fechaingreso,fechanacimiento,sueldoBasico)
  VALUES ('24154269','Ofelia Garcia','f','Triunvirato 628','2004-09-23','1974-05-12',390);
INSERT INTO empleados (documento,nombre,sexo,domicilio,fechaingreso,fechanacimiento,sueldoBasico)
  VALUES ('30154269','Oscar Mendez','m','Colon 1245','2004-06-23','1984-05-14',300);

-- 4. La empresa festeja cada mes los cumpleaños de todos los empleados que cumplen ese mes. Queremos 
-- saber cuántos empleados cumplen años en los meses de agosto a diciembre:
SELECT MONTH(fechanacimiento) mes, COUNT(*) cantidad FROM empleados
WHERE MONTH(fechanacimiento) BETWEEN 8 AND 12
GROUP BY MONTH(fechanacimiento);

-- 5. Se necesita conocer la cantidad de empleados agrupados por fecha de ingreso a la empresa sólo de 
-- las fechas posteriores a "1990-02-01":
SELECT fechaingreso, COUNT(*) cantidad 
FROM empleados 
WHERE fechaingreso > '1990-02-01' 
GROUP BY fechaingreso;
