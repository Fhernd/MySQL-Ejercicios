DROP TABLE IF EXISTS usuarios;

CREATE TABLE usuarios (
  nombre VARCHAR(20),
  clave VARCHAR(10),
  PRIMARY KEY (nombre)
 );

describe usuarios;

INSERT INTO usuarios (nombre, clave) VALUES ('Leonardo','payaso');
INSERT INTO usuarios (nombre, clave) VALUES ('MarioPerez','Marito');
INSERT INTO usuarios (nombre, clave) VALUES ('Marcelo','River');
INSERT INTO usuarios (nombre, clave) VALUES ('Gustavo','River');

INSERT INTO usuarios (nombre, clave) VALUES ('Gustavo','Boca');
