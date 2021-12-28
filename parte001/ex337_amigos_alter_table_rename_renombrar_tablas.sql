DROP TABLE IF EXISTS amigos;
DROP TABLE IF EXISTS contactos;

CREATE TABLE amigos(
  nombre VARCHAR(30),
  domicilio VARCHAR(30),
  telefono VARCHAR (11)
 );

ALTER TABLE amigos RENAME contactos;

SHOW TABLES;

RENAME TABLE contactos TO amigos;

SHOW TABLES;

DROP TABLE IF EXISTS amigos;
DROP TABLE IF EXISTS contactos;

create TABLE amigos(
  nombre VARCHAR(30),
  domicilio VARCHAR(30),
  telefono VARCHAR (11)
 );

create TABLE contactos(
  nombre VARCHAR(30),
  domicilio VARCHAR(30),
  telefono VARCHAR (11)
 );

INSERT INTO contactos (nombre,telefono)
  VALUES ('Juancito','4565657'); 
INSERT INTO contactos (nombre,telefono)
  VALUES ('patricia','4223344'); 

INSERT INTO amigos (nombre,telefono)
  VALUES ('Perez Luis','4565657'); 
INSERT INTO amigos (nombre,telefono)
  VALUES ('Lopez','4223344'); 

RENAME TABLE amigos TO auxiliar,
  contactos TO amigos,
  auxiliar TO contactos;

select * from amigos;
select * from contactos;
