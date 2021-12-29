DROP TABLE IF EXISTS postulantes;

CREATE TABLE postulantes(
  numero INT UNSIGNED AUTO_INCREMENT,
  documento CHAR(8),
  nombre VARCHAR(30),
  idioma SET('ingles','italiano','portuges'),
  PRIMARY KEY (numero)
 );

INSERT INTO postulantes (documento,nombre,idioma)
  VALUES ('22555444','Ana Acosta','ingles');

INSERT INTO postulantes (documento,nombre,idioma)
  VALUES ('23555444','Juana Pereyra','ingles,italiano');

INSERT INTO postulantes (documento,nombre,idioma)
  VALUES ('25555444','Andrea Garcia','italiano,ingles');

INSERT INTO postulantes (documento,nombre,idioma)
  VALUES ('27555444','Diego Morales','italiano,ingles,italiano');

INSERT INTO postulantes (documento,nombre,idioma)
  VALUES ('27555464','Diana Herrero','frances');

INSERT INTO postulantes (documento,nombre,idioma)
  VALUES ('28255265','Pedro Perez',0);
INSERT INTO postulantes (documento,nombre,idioma)
  VALUES ('22255260','Nicolas Duarte',8);

INSERT INTO postulantes (documento,nombre)
  VALUES ('28555464','Ines Figueroa');

INSERT INTO postulantes (documento,nombre,idioma)
  VALUES ('29255265','Esteban Juarez',7);

SELECT * FROM postulantes
  WHERE idioma LIKE '%ingles%';

SELECT * FROM postulantes
  WHERE idioma LIKE '%ingles,italiano%';

SELECT * FROM postulantes
  WHERE idioma LIKE '%italiano,ingles%';

SELECT * FROM postulantes
  WHERE FIND_IN_SET('ingles',idioma)>0;

SELECT * FROM postulantes
  WHERE idioma='ingles';

SELECT * FROM postulantes
  WHERE idioma=1;

SELECT * FROM postulantes
  WHERE idioma=7;

SELECT * FROM postulantes
  WHERE idioma NOT LIKE '%ingles%';
SELECT * FROM postulantes
  WHERE NOT FIND_IN_SET('ingles',idioma)>0;