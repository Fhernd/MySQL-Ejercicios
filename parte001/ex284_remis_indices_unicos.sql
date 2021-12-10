-- 1. Elimine la tabla si existe:
DROP TABLE IF EXISTS remis;

-- 2. Cree la tabla con una clave primaria por número de vehículo y un índice único por "patente", 
-- éste es un valor por el cual podemos realizar consultas frecuentemente y es único (igual que el 
-- número del remis):
 CREATE TABLE remis(
  patente CHAR(6) NOT NULL,
  numero TINYINT UNSIGNED NOT NULL,
  marca VARCHAR(15),
  modelo YEAR,
  PRIMARY KEY (numero),
  UNIQUE i_patente (patente)
 );

-- 3. Vea los índices y analice la información:
SHOW INDEX FROM remis;

-- 4. Los valores de la clave primaria no pueden repetirse. Intente ingresar 2 vehículos con el mismo 
-- número.
INSERT INTO remis VALUES ('ABC-123', 1001, 'Mazda', 2001);
-- INSERT INTO remis VALUES ('XYZ-951', 1001, 'Chevrolet', 2019);

-- 5. Los valores para el índice único no pueden repetirse. Intente ingresar 2 vehículos con igual 
-- patente:
-- INSERT INTO remis VALUES ('ABC-123', 1002, 'Kia', 2017);

SELECT * FROM remis;
