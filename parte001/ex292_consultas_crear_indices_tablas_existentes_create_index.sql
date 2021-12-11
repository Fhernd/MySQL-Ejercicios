-- 1. Elimine la tabla si existe:
DROP TABLE IF EXISTS consultas;

-- 2. Cree la tabla con la siguiente estructura:
 create table consultas(
  fecha DATE,
  numero INT unsigned,
  documento CHAR(8) NOT NULL,
  obrasocial VARCHAR(30),
  medico VARCHAR(30)
 );

-- 3. Agregue un índice único multicampo (fecha,documento,medico):
CREATE UNIQUE INDEX i_fechadocumentomedico ON consultas (fecha, documento, medico);

SHOW INDEX FROM consultas;

-- 4. Agregue un índice común por el campo "medico":
CREATE INDEX i_medico ON consultas (medico);

SHOW INDEX FROM consultas;

-- 5. Agregue un índice común por el campo "obrasocial":
CREATE INDEX i_obrasocial ON consultas (obrasocial);

SHOW INDEX FROM consultas;