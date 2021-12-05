DROP TABLE IF EXISTS vehiculos;

CREATE TABLE vehiculos(
  patente CHAR(6) NOT NULL,
  tipo CHAR(4),
  horallegada TIME NOT NULL,
  horasalida TIME,
  PRIMARY KEY(patente,horallegada)
 );

DESCRIBE vehiculos;

INSERT INTO vehiculos (patente,tipo,horallegada,horasalida)
  VALUES ('ACD123','auto','8:30','9:40');
INSERT INTO vehiculos (patente,tipo,horallegada,horasalida)
  VALUES ('AKL098','auto','8:45','11:10');
INSERT INTO vehiculos (patente,tipo,horallegada,horasalida)
  VALUES ('HGF123','auto','9:30','11:40');
INSERT INTO vehiculos (patente,tipo,horallegada,horasalida)
  VALUES ('DRT123','auto','15:30',NULL);
INSERT INTO vehiculos (patente,tipo,horallegada,horasalida)
  VALUES ('FRT545','moto','19:45',NULL);
INSERT INTO vehiculos (patente,tipo,horallegada,horasalida)
  VALUES ('GTY154','auto','20:30','21:00');

INSERT INTO vehiculos (patente,tipo,horallegada,horasalida)
   VALUES ('ACD123','auto','16:00',NULL);

INSERT INTO vehiculos (patente,tipo,horallegada,horasalida)
  VALUES ('ACD123','auto','16:00',NULL);

INSERT INTO vehiculos (patente,tipo,horallegada,horasalida)
  VALUES ('ADF123','moto','8:30','10:00');

ALTER TABLE vehiculos DROP horallegada;

DELETE FROM vehiculos
  WHERE patente='ACD123';

ALTER TABLE vehiculos DROP horallegada;

DESCRIBE vehiculos;
