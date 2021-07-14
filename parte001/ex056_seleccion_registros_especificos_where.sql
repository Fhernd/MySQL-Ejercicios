DROP TABLE IF EXISTS usuarios;

CREATE TABLE usuarios (
  nombre VARCHAR(30),
  clave VARCHAR(10)
);

DESCRIBE usuarios;

INSERT INTO usuarios (nombre, clave) VALUES ('Leonardo','payaso');
INSERT INTO usuarios (nombre, clave) VALUES ('MarioPerez','Marito');
INSERT INTO usuarios (nombre, clave) VALUES ('Marcelo','bocajunior');
INSERT INTO usuarios (nombre, clave) VALUES ('Gustavo','bocajunior');

SELECT nombre, clave FROM usuarios;

SELECT nombre, clave FROM usuarios WHERE nombre='Leonardo';

SELECT nombre, clave FROM usuarios WHERE clave='bocajunior';

SELECT nombre, clave FROM usuarios WHERE clave='river';
