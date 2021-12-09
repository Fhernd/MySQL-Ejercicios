-- 1. Elimine la tabla, si existe:
DROP TABLE IF EXISTS medicamentos;

-- 2. Cree la tabla e indéxela por el campo "laboratorio":
CREATE TABLE medicamentos(
  codigo INT UNSIGNED AUTO_INCREMENT,
  nombre VARCHAR(20),
  laboratorio VARCHAR(20),
  precio DECIMAL(5,2),
  cantidad INT UNSIGNED,
  PRIMARY KEY(codigo),
  INDEX idx_laboratorio (laboratorio)
 );

-- 3. Visualice los índices de la tabla "medicamentos" y analice la información:
SHOW INDEX FROM medicamentos;
