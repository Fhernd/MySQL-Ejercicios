-- 1. Elimine la tabla "alumnos" si existe:
DROP TABLE IF EXISTS alumnos;

-- 2. Cree la tabla con la siguiente estructura:
CREATE TABLE alumnos(
  legajo VARCHAR(4) NOT NULL,
  documento VARCHAR(8) NOT NULL,
  apellido VARCHAR(30),
  nombre VARCHAR(30),
  domicilio VARCHAR(30),
  PRIMARY KEY (legajo)
 );

-- 3. Ingrese los siguientes registros:
 INSERT INTO alumnos (legajo,documento,apellido,nombre,domicilio)
  VALUES('A233','22345345','Perez','Mariana','Colon 234');
 INSERT INTO alumnos (legajo,documento,apellido,nombre,domicilio)
  VALUES('A567','23545345','Morales','Marcos','Avellaneda 348');
 INSERT INTO alumnos (legajo,documento,apellido,nombre,domicilio)
  VALUES('B654','24356345','Gonzalez','Analia','Caseros 444');
 INSERT INTO alumnos (legajo,documento,apellido,nombre,domicilio)
  VALUES('A642','20254125','Torres','Ramiro','Dinamarca 209');
 INSERT INTO alumnos (legajo,documento,apellido,nombre,domicilio)
  VALUES('B509','20445778','Miranda','Carmen','Uspallata 999');
 INSERT INTO alumnos (legajo,documento,apellido,nombre,domicilio)
  VALUES('C777','28111444','Figueroa','Natalia','Sarmiento 856');

-- 4. Seleccione todos los registros:
SELECT * FROM alumnos;

-- 5. Ingrese 2 alumnos con igual nombre y apellido pero distinto legajo:
 INSERT INTO alumnos (legajo,documento,apellido,nombre,domicilio)
  VALUES('C185','28111444','Figueroa','Natalia','Sarmiento 856');
 INSERT INTO alumnos (legajo,documento,apellido,nombre,domicilio)
  VALUES('C951','28111444','Figueroa','Natalia','Sarmiento 856');

-- 6. Intente ingresar un registro que repita el campo clave ("legajo"). 
-- Aparece mensaje de error por clave repetida):
 INSERT INTO alumnos (legajo,documento,apellido,nombre,domicilio)
  VALUES('A642','6546578','Ortiz','Edward','Avenida 654');
