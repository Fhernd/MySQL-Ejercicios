-- 1. Elimine la tabla si existe:
DROP TABLE IF EXISTS agenda;

-- 2. Cree la tabla con la siguiente estructura:
CREATE TABLE agenda(
  apellido VARCHAR(30),
  nombre VARCHAR(20) NOT NULL,
  domicilio VARCHAR(30),
  telefono VARCHAR(11),
  mail VARCHAR(30)
 );

-- 3. Ingrese los siguientes registros:
 INSERT INTO agenda VALUES ('Perez','Juan','Sarmiento 345','4334455','juancito@gmail.com');
 INSERT INTO agenda VALUES ('Garcia','Ana','Urquiza 367','4226677','anamariagarcia@hotmail.com');
 INSERT INTO agenda VALUES ('Lopez','Juan','Avellaneda 900',NULL,'juancitoLopez@gmail.com');
 INSERT INTO agenda VALUES ('Juarez','Mariana','Sucre 123','0525657687','marianaJuarez2@gmail.com');
 INSERT INTO agenda VALUES ('Molinari','Lucia','Peru 1254','4590987','molinarilucia@hotmail.com');
 INSERT INTO agenda VALUES ('Ferreyra','Patricia','Colon 1534','4585858',NULL);
 INSERT INTO agenda VALUES ('Perez','Susana','San Martin 333',NULL,NULL);
 INSERT INTO agenda VALUES ('Perez','Luis','Urquiza 444','0354545256','perezluisalberto@hotmail.com');
 INSERT INTO agenda VALUES ('Lopez','Maria','Salta 314',NULL,'lopezmariayo@gmail.com');

-- 4. Cuente cuántos de sus amigos tienen mail:
SELECT COUNT(mail) FROM agenda;

-- 5. Cuente cuántos de sus amigos tienen teléfono:
SELECT COUNT(telefono) FROM agenda;

-- 6. Cuente cuántos se apellidan "Perez":
SELECT COUNT(*) FROM agenda WHERE apellido = 'Perez';
