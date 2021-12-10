-- 1. Elimine la tabla si existe:
DROP TABLE IF EXISTS alumnos;

-- 2. Cree la tabla con la siguiente estructura:
CREATE TABLE alumnos(
  agnio YEAR NOT NULL,
  numero INT UNSIGNED NOT NULL,
  nombre VARCHAR(30),
  documento char(8) NOT NULL,
  domicilio VARCHAR(30),
  ciudad VARCHAR(20),
  provincia VARCHAR(20),  
  PRIMARY KEY(agnio,numero),
  UNIQUE i_documento (documento),
  INDEX i_ciudadprovincia (ciudad,provincia)
 );

-- 3. Vea los índices de la tabla:
SHOW INDEX FROM alumnos;

-- 4. Elimine el índice "i_ciudadprovincia":
DROP INDEX i_ciudadprovincia ON alumnos;

-- 5. Verifique la eliminación usando "show index":
SHOW INDEX FROM alumnos;

-- 6. Intente eliminar el índice PRIMARY:
-- DROP INDEX PRIMARY ON alumnos;

-- 7. Elimine el índice único:
DROP INDEX i_documento ON alumnos;

-- 8. Verifique la eliminación usando "show index":
SHOW INDEX FROM alumnos;
