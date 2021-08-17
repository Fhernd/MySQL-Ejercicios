DROP TABLE IF EXISTS vehiculos;

CREATE TABLE vehiculos(
  patente CHAR(6) NOT NULL,
  tipo CHAR (4),
  horallegada TIME NOT NULL,
  horasalida TIME
 );

INSERT INTO vehiculos (patente,tipo,horallegada) VALUES ('ACD123','auto','8:30');
INSERT INTO vehiculos (patente,tipo,horallegada) VALUES('BGF234','moto','8:35');
INSERT INTO vehiculos (patente,tipo,horallegada) VALUES('KIU467','auto','9:40');

SELECT * FROM vehiculos;

UPDATE vehiculos SET horasalida='11:45'
  WHERE patente='ACD123';

INSERT INTO vehiculos VALUES('LIO987','auto','10',null);

SELECT * FROM vehiculos;

INSERT INTO vehiculos VALUES('GTR987','auto','1010',null);

INSERT INTO vehiculos VALUES('HTR234','auto','2006-12-15 12:15',null);

INSERT INTO vehiculos VALUES('KUY246','auto','12/15',null);

SELECT * FROM vehiculos;
