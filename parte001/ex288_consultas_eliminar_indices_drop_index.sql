-- 1. Elimine la tabla si existe:
DROP TABLE IF EXISTS consultas;

-- 2. Cree la tabla con la estructura siguiente:
 create table consultas(
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

-- 4. Vea los índices:
SHOW INDEX FROM consultas;

-- 5. Elimine el índice único:
DROP INDEX i_consulta ON consultas;

SHOW INDEX FROM consultas;

-- 6. Elimine el índice "i_medico":
DROP INDEX i_medico ON consultas;

-- 7. Verifique las eliminaciones anteriores visualizando los índices:
SHOW INDEX FROM consultas;

-- 8. Elimine el índice "i_obrasocial":
DROP INDEX i_obrasocial ON consultas;

SHOW INDEX FROM consultas;