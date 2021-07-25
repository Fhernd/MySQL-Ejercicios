DROP TABLE IF EXISTS usuarios;

CREATE TABLE usuarios (
  nombre VARCHAR(30),
  clave VARCHAR(10)
);

INSERT INTO usuarios (nombre, clave) VALUES ('Leonardo','payaso');
INSERT INTO usuarios (nombre, clave) VALUES ('MarioPerez','Marito');
INSERT INTO usuarios (nombre, clave) VALUES ('Marcelo','River');
INSERT INTO usuarios (nombre, clave) VALUES ('Gustavo','River');

DELETE FROM usuarios WHERE nombre='Leonardo';

SELECT nombre, clave FROM usuarios;

DELETE FROM usuarios WHERE clave='River';

SELECT nombre, clave FROM usuarios;

DELETE FROM usuarios;

SELECT nombre,clave FROM usuarios;

SELECT @@SQL_SAFE_UPDATES;
