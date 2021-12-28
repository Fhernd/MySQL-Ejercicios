-- 1. Elimine la tabla si existe:
DROP TABLE IF EXISTS consultas;

-- 2. Cree la tabla con la siguiente estructura:
CREATE TABLE consultas(
  fecha DATE,
  numero INT unsigned,
  documento CHAR(8) NOT NULL,
  obrasocial VARCHAR(30),
  medico VARCHAR(30),
  PRIMARY KEY(fecha,numero),
  UNIQUE i_consulta(documento,fecha,medico),
  INDEX i_medico (medico),
  INDEX i_obrasocial (obrasocial)
 );

-- 3. Vea los índices de la tabla:
SHOW INDEX FROM consultas;

-- 4. Elimine el índice único:
ALTER TABLE consultas DROP INDEX i_consulta;

SHOW INDEX FROM consultas;

-- 5. 5- Elimine los índices comumes:
ALTER TABLE consultas DROP INDEX i_medico;
ALTER TABLE consultas DROP INDEX i_obrasocial;

-- 6. Vea los índices:
SHOW INDEX FROM consultas;
