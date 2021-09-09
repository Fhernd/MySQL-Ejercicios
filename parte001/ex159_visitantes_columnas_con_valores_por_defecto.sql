-- 1. Elimine la tabla "visitantes", si existe:
DROP TABLE IF EXISTS visitantes;

-- 2. Cree la tabla con la siguiente estructura:
 create table visitantes(
  nombre varchar(30) not null,
  edad tinyint unsigned,
  sexo char(1) default 'f',
  domicilio varchar(30),
  ciudad varchar(20) default 'Cordoba',
  telefono varchar(11),
  mail varchar(30) default 'no tiene',
  montocompra decimal (6,2)
 );

DESCRIBE visitantes;

-- 4. Ingrese algunos registros sin especificar valores para algunos campos para ver cómo opera la 
-- cláusula "default":

INSERT INTO visitantes (nombre, edad, domicilio, ciudad, telefono, mail, montocompra) 
VALUES ('Paula', 29, 'Caracas 123', 'Caracas', '32165412345', 'paula@mail.co', 123.23);

INSERT INTO visitantes (nombre, edad, sexo, domicilio, ciudad, montocompra) 
VALUES ('Rodrigo', 31, 'm', 'Palermo 95', 'Palermo', 99.99);

INSERT INTO visitantes (nombre, edad, sexo, domicilio, ciudad, telefono) 
VALUES ('Mónica', 43, DEFAULT, 'Madrid Av. Principal', 'Madrid', '32165485232');

-- 5. Muestre todos los registros:
SELECT * FROM visitantes;