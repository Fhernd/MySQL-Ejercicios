DROP TABLE IF EXISTS visitantes;

CREATE TABLE visitantes(
  nombre VARCHAR(30),
  edad INTEGER1 unsigned,
  sexo CHAR(1),
  domicilio VARCHAR(30),
  ciudad VARCHAR(20),
  telefono VARCHAR(11),
  montocompra FLOAT unsigned
 );

describe visitantes;