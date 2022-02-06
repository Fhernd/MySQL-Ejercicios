-- 1. Elimine la tabla "clientes" y "provincias", si existen:
DROP TABLE IF EXISTS clientes, provincias;

-- 2. Créelas con las siguientes estructuras:
CREATE TABLE clientes (
  codigo INT UNSIGNED AUTO_INCREMENT,
  nombre VARCHAR(30) NOT NULL,
  domicilio VARCHAR(30),
  ciudad VARCHAR(20),
  codigoprovincia TINYINT UNSIGNED,
  telefono VARCHAR(11),
  PRIMARY KEY(codigo)
 );

CREATE TABLE provincias(
  codigo TINYINT UNSIGNED AUTO_INCREMENT,
  nombre VARCHAR(20),
  PRIMARY KEY (codigo)
 );

-- 3. Ingrese algunos registros para ambas tablas:
INSERT INTO provincias (nombre) VALUES ('Cordoba');
INSERT INTO provincias (nombre) VALUES ('Santa Fe');
INSERT INTO provincias (nombre) VALUES ('Corrientes');
INSERT INTO provincias (nombre) VALUES ('Misiones');
INSERT INTO provincias (nombre) VALUES ('Salta');
INSERT INTO provincias (nombre) VALUES ('Buenos Aires');
INSERT INTO provincias (nombre) VALUES ('Neuquen');

INSERT INTO clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Lopez Marcos', 'Colon 111', 'Córdoba',1,'null');
INSERT INTO clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Perez Ana', 'San Martin 222', 'Cruz del Eje',1,'4578585');
INSERT INTO clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Garcia Juan', 'Rivadavia 333', 'Villa Maria',1,'4578445');
INSERT INTO clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Perez Luis', 'Sarmiento 444', 'Rosario',2,null);
INSERT INTO clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Pereyra Lucas', 'San Martin 555', 'Cruz del Eje',1,'4253685');
INSERT INTO clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Gomez Ines', 'San Martin 666', 'Santa Fe',2,'0345252525');
INSERT INTO clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Torres Fabiola', 'Alem 777', 'Villa del Rosario',1,'4554455');
INSERT INTO clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Lopez Carlos', 'Irigoyen 888', 'Cruz del Eje',1,null);
INSERT INTO clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Ramos Betina', 'San Martin 999', 'Cordoba',1,'4223366');
INSERT INTO clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Lopez Lucas', 'San Martin 1010', 'Posadas',4,'0457858745');

-- 4. Obtenga los datos de ambas tablas, use alias:
SELECT C.*, P.* 
FROM clientes AS C 
JOIN provincias AS P 
ON C.codigoprovincia = P.codigo;

-- 5. Obtenga la misma información anterior pero ordenada por nombre del cliente:
SELECT C.*, P.* 
FROM clientes AS C 
JOIN provincias AS P 
ON C.codigoprovincia = P.codigo 
ORDER BY C.nombre;

-- 6. Omita la referencia a las tablas en la condición "on" para verificar que la sentencia no se 
-- ejecuta porque el nombre del campo "codigo" es ambiguo (ambas tablas lo tienen):
SELECT C.*, P.* 
FROM clientes AS C 
JOIN provincias AS P 
ON codigoprovincia = codigo;
