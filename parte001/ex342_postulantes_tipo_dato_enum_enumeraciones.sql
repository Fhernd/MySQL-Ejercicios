DROP TABLE IF EXISTS postulantes;

CREATE TABLE postulantes(
  numero INT unsigned auto_increment,
  documento CHAR(8),
  nombre VARCHAR(30),
  sexo CHAR(1),
  estudios ENUM('ninguno','primario','secundario', 'terciario','universitario') NOT NULL,
  PRIMARY KEY (numero)
 );

INSERT INTO postulantes (documento,nombre,sexo,estudios)
  VALUES ('22333444','Ana Acosta','f','primario');
INSERT INTO postulantes (documento,nombre,sexo,estudios)
  VALUES ('22433444','Mariana Mercado','m','universitario');

INSERT INTO postulantes (documento,nombre,sexo)
  VALUES ('24333444','Luis Lopez','m');

SELECT * FROM postulantes;

INSERT INTO postulantes (documento,nombre,sexo,estudios)
   VALUES ('2455566','Juana Pereyra','f',5);

INSERT INTO postulantes (documento,nombre,sexo,estudios)
  VALUES ('24678907','Pedro Perez','m','Post Grado');

INSERT INTO postulantes (documento,nombre,sexo,estudios)
   VALUES ('22222333','Susana Pereyra','f',6);
INSERT INTO postulantes (documento,nombre,sexo,estudios)
  VALUES ('25676567','Marisa Molina','f',0);

SELECT * FROM postulantes
  WHERE estudios=0;

SELECT * FROM postulantes
  WHERE estudios='universitario';

-- INSERT INTO postulantes (documento,nombre,sexo,estudios)
-- VALUES ('25676567','Marisa Molina','f',null);
