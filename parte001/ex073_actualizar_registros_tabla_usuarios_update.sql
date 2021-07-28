DROP TABLE IF EXISTS usuarios;

CREATE TABLE usuarios (
  nombre VARCHAR(30),
  clave VARCHAR(10)
);

INSERT INTO usuarios (nombre, clave) VALUES ('Leonardo','payaso');
INSERT INTO usuarios (nombre, clave) VALUES ('MarioPerez','Marito'); 
INSERT INTO usuarios (nombre, clave) VALUES ('Marcelo','River');
INSERT INTO usuarios (nombre, clave) VALUES ('Gustavo','River');

SELECT * FROM usuarios;

UPDATE usuarios SET clave='RealMadrid';

SELECT nombre,clave FROM usuarios;

UPDATE usuarios SET nombre='GustavoGarcia'
  WHERE nombre='Gustavo';

UPDATE usuarios SET nombre='MarceloDuarte', clave='Marce'
  WHERE nombre='Marcelo';

SELECT nombre,clave FROM usuarios;
