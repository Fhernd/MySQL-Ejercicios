-- 1. Elimine la tabla "clientes", si existe:
DROP TABLE IF EXISTS clientes;

-- 2. Créela con la siguiente estructura:
CREATE TABLE clientes (
  codigo INT UNSIGNED AUTO_INCREMENT,
  nombre VARCHAR(30) NOT NULL,
  domicilio VARCHAR(30),
  ciudad VARCHAR(20),
  provincia VARCHAR (20),
  telefono VARCHAR(11),
  PRIMARY KEY(codigo)
 );

-- 3. Ingrese algunos registros:
INSERT INTO clientes (nombre,domicilio,ciudad,provincia,telefono)
  VALUES ('Lopez Marcos', 'Colon 111', 'Córdoba','Cordoba','null');
INSERT INTO clientes (nombre,domicilio,ciudad,provincia,telefono)
  VALUES ('Perez Ana', 'San Martin 222', 'Cruz del Eje','Cordoba','4578585');
INSERT INTO clientes (nombre,domicilio,ciudad,provincia,telefono)
  VALUES ('Garcia Juan', 'Rivadavia 333', 'Villa Maria','Cordoba','4578445');
INSERT INTO clientes (nombre,domicilio,ciudad,provincia,telefono)
  VALUES ('Perez Luis', 'Sarmiento 444', 'Rosario','Santa Fe',NULL);
INSERT INTO clientes (nombre,domicilio,ciudad,provincia,telefono) 
  VALUES ('Pereyra Lucas', 'San Martin 555', 'Cruz del Eje','Cordoba','4253685');
INSERT INTO clientes (nombre,domicilio,ciudad,provincia,telefono)
  VALUES ('Gomez Ines', 'San Martin 666', 'Santa Fe','Santa Fe','0345252525');
INSERT INTO clientes (nombre,domicilio,ciudad,provincia,telefono)
  VALUES ('Torres Fabiola', 'Alem 777', 'Villa del Rosario','Cordoba','4554455');
INSERT INTO clientes (nombre,domicilio,ciudad,provincia,telefono)
  VALUES ('Lopez Carlos', 'Irigoyen 888', 'Cruz del Eje','Cordoba',NULL);
INSERT INTO clientes (nombre,domicilio,ciudad,provincia,telefono)
  VALUES ('Ramos Betina', 'San Martin 999', 'Cordoba','Cordoba','4223366');
INSERT INTO clientes (nombre,domicilio,ciudad,provincia,telefono)
  VALUES ('Lopez Lucas', 'San Martin 1010', 'Posadas','Misiones','0457858745');

-- 4. Muestre las distintas provincias y ciudades en las cuales la empresa tiene clientes:
SELECT DISTINCT provincia, ciudad FROM clientes;

-- 5. Obtenga la cantidad de ciudades distintas, por provincia en las cuales hay clientes:
SELECT provincia, COUNT(DISTINCT ciudad) FROM clientes GROUP BY provincia;
