-- 1. Elimine la tabla (drop table) si existe (if exists):
DROP TABLE IF EXISTS clientes;

-- 2. Cree la tabla con los siguientes campos: apellido (cadena de 30), nombre (cadena de 20),
-- domicilio (cadena de 30) y telefono (cadena de 11):
CREATE TABLE clientes (
    documento VARCHAR(8) PRIMARY KEY,
    apellido VARCHAR(30),
    nombre VARCHAR(20),
    domicilio VARCHAR(30),
    telefono VARCHAR(11)
);

-- 3. Visualice la estructura de la tabla "agenda" (describe):
DESCRIBE clientes;

-- 4. Ingrese los siguientes registros:
INSERT INTO clientes (documento,apellido,nombre,domicilio, telefono)
   VALUES('22345678','Perez','Marcos','Colon 123','4545454');
 INSERT INTO clientes (documento,apellido,nombre,domicilio, telefono)    
   VALUES('23222222','Garcia','Ana','Avellaneda 1345','4252652');
 INSERT INTO clientes (documento,apellido,nombre,domicilio, telefono)   
   VALUES('20454545','Lopez','Susana','Urquiza 344','4522525');
 INSERT INTO clientes (documento,apellido,nombre,domicilio, telefono)   
   VALUES('35454545','Lopez','Susana','Urquiza 344','4522525');

-- 6.  Ingrese un cliente con documento no repetido y apellido y nombre repetido:
INSERT INTO clientes (documento,apellido,nombre,domicilio, telefono)
   VALUES('5646575','Perez','Marcos','Avenida 100','9546574');

-- 7. Ingrese un cliente con documento no repetido y domicilio repetido:
INSERT INTO clientes (documento,apellido,nombre,domicilio, telefono)
   VALUES('5435468','Gomez','Juan','Carrera 100','6557565');

-- 8. Intente ingresar un registro con documento repetido (aparece mensaje de error por clave repetida):
INSERT INTO clientes (documento,apellido,nombre,domicilio, telefono)
   VALUES('5435468','Gomez','Juan','Carrera 100','6557565');
