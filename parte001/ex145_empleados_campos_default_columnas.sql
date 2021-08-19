-- 1. Elimine la tabla, si existe:
DROP TABLE IF EXISTS empleados;

-- 2. Cree la tabla:
 CREATE TABLE empleados(
  nombre VARCHAR(20),
  documento CHAR(8) NOT NULL,
  sexo CHAR(1),
  domicilio VARCHAR(30),
  fechaingreso DATE NOT NULL,
  fechanacimiento DATE,
  sueldo DECIMAL(5,2) unsigned NOT NULL
 );

DESCRIBE empleados;

-- 3. Agregue los siguientes registros para ver cómo guarda MySQL los valores no ingresados:
 INSERT INTO empleados (nombre,documento,sexo)
  VALUES('Marcela Medina','22333444','f');

INSERT INTO empleados (domicilio,fechaingreso)
  VALUES('Avellaneda 200','2005-08-16');

INSERT INTO empleados (fechanacimiento,sueldo)
  VALUES('1970-09-26',500.90);

-- 4- Seleccione todos los datos de los empleados para ver cómo guardó MySQL los valores no ingresados.
-- En el primer registro ingresado, en los campos "domicilio" y "fechanacimiento" ingresará "null", 
-- porque ninguno de los campos están definidos como "NOT NULL"; en el campo "fechaingreso" 
-- almacena "000-00-00" ya que dicho campo no admite valores nulos; en el campo "sueldo" guarda "0.00" 
-- porque el campo no admite valores nulos. En el segundo registro ingresado se almacena "null" en los 
-- campos "nombre", "sexo" y "fechanacimiento" pues estos campos admiten valores "null"; en el 
-- campo "documento", que no admite valores nulos, se almacena una cadena vacía. En el tercer registro 
-- guarda "null" en los campos "nombre", "sexo" y "domicilio", ya que los permiten; en el 
-- campo "documento", almacena una cadena vacía.

SELECT * FROM empleados;
