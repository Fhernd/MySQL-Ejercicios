-- 1. Elimine la tabla si existe:
DROP TABLE IF EXISTS agenda;

-- 2. Cree la tabla con la siguiente estructura:
CREATE TABLE agenda(
  apellido VARCHAR(30),
  nombre VARCHAR(20) NOT NULL,
  domicilio VARCHAR(30),
  telefono VARCHAR(11),
  mail VARCHAR(30),
  index i_apellido (apellido)
 );

-- 3. Ingrese 10 registros:
 INSERT INTO agenda VALUES ('Perez','Juan','Sarmiento 345','4334455','juancito@gmail.com');
 INSERT INTO agenda VALUES ('Garcia','Ana','Urquiza 367','4226677','anamariagarcia@hotmail.com');
 INSERT INTO agenda VALUES ('Lopez','Juan','Avellaneda 900',NULL,'juancitoLopez@gmail.com');
 INSERT INTO agenda VALUES ('Juarez','Mariana','Sucre 123','0525657687','marianaJuarez2@gmail.com');
 INSERT INTO agenda VALUES ('Molinari','Lucia','Peru 1254','4590987','molinarilucia@hotmail.com');
 INSERT INTO agenda VALUES ('Ferreyra','Patricia','Colon 1534','4585858',NULL);
 INSERT INTO agenda VALUES ('Perez','Susana','San Martin 333',NULL,NULL);
 INSERT INTO agenda VALUES ('Perez','Luis','Urquiza 444','0354545256','perezluisalberto@hotmail.com');
 INSERT INTO agenda VALUES ('Lopez','Maria','Salta 314',NULL,'lopezmariayo@gmail.com');

-- 4. Realice una consulta limitando la salida a sólo 3 registros:
SELECT * FROM agenda LIMIT 3;

-- 5. Muestre los registros desde el cero al 9 usando un solo argumento:
SELECT * FROM agenda LIMIT 9;

-- 6. Muestre 5 registros a partir del 5:
SELECT * FROM agenda LIMIT 5, 5;

-- 7. Muestre los registros a partir del 7 hasta el final:
SELECT * FROM agenda LIMIT 7, 1000000;