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
 INSERT INTO agenda VALUES('Perez','Juan','Sarmiento 345','4334455','juancito@gmail.com');
 INSERT INTO agenda VALUES('Garcia','Ana','Urquiza 367','4226677','anamariagarcia@hotmail.com');
 INSERT INTO agenda VALUES('Lopez','Juan','Avellaneda 900',NULL,'juancitoLopez@gmail.com');
 INSERT INTO agenda VALUES('Juarez','Mariana','Sucre 123','0525657687','marianaJuarez2@gmail.com');
 INSERT INTO agenda VALUES('Molinari','Lucia','Peru 1254','4590987','molinarilucia@hotmail.com');
 INSERT INTO agenda VALUES('Ferreyra','Patricia','Colon 1534','4585858',NULL);
 INSERT INTO agenda VALUES('Perez','Susana','San Martin 333',NULL,NULL);
 INSERT INTO agenda VALUES('Perez','Luis','Urquiza 
444','0354545256','perezluisalberto@hotmail.com');
 INSERT INTO agenda VALUES('Lopez','Maria','Salta 314',NULL,'lopezmariayo@gmail.com');

-- 4. Busque todos los mails que contengan la cadena "gmail":
SELECT * FROM agenda WHERE mail REGEXP 'gmail';

-- 5. Busque los nombres que no tienen "z" ni "g":
SELECT * FROM agenda WHERE nombre NOT REGEXP '[gz]';

-- 6. Busque los apellidos que tienen por lo menos una de las letras de la "v" hasta la "z" (v,w,x,y,z):
SELECT * FROM agenda WHERE apellido REGEXP '[v-z]';

-- 7. Seleccione los apellidos que terminen en "ez":
SELECT * FROM agenda WHERE apellido REGEXP 'es$';

-- 8. Seleccione los apellidos, nombres y domicilios de los amigos cuyos apellidos contengan 2 letras "i":
SELECT apellido, nombre, domicilio FROM agenda WHERE apellido REGEXP 'i.*i';

-- 9. Seleccione los teléfonos que tengan 7 caracteres exactamente
SELECT * FROM agenda WHERE telefono REGEXP '^.......$';

-- 10. Seleccione el nombre y mail de todos los amigos cuyos mails tengan al menos 20 caracteres:
SELECT nombre, mail FROM agenda WHERE mail REGEXP '....................';