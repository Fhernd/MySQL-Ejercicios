-- 1. Elimine la tabla si existe:
DROP TABLE IF EXISTS consultas;

-- 2. Cree la tabla con una clave primaria compuesta (fecha y número de consulta):
CREATE TABLE consultas(
  fecha DATE,
  numero INT UNSIGNED,
  documento CHAR(8) NOT NULL,
  obrasocial VARCHAR(30),
  medico VARCHAR(30),
  PRIMARY KEY (fecha,numero)
 );

SHOW INDEX FROM consultas;

-- 3. Agregue un índice único llamado "i_consulta" compuesto por los campos "documento", "fecha" 
-- y "medico":
ALTER TABLE consultas ADD UNIQUE INDEX i_consulta (documento, fecha, medico);

SHOW INDEX FROM consultas;

-- 4. Hay 2 campos por los cuales podemos realizar consultas frecuentemente: "medico" y "obrasocial", 
-- cree índices comunes para esos campos:
ALTER TABLE consultas ADD INDEX i_medico (medico);
ALTER TABLE consultas ADD INDEX i_obrasocial (obrasocial);

-- 5. Vea los índices:
SHOW INDEX FROM consultas;
