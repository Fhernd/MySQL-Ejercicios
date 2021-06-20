/* 1. Elimine la tabla "agenda" si existe: */
DROP TABLE IF EXISTS agenda;

/* 2. Cree una tabla llamada "agenda", debe tener los siguientes campos: */
CREATE TABLE agenda(
    nombre VARCHAR(20),
    domicilio VARCHAR(30),
    telefono VARCHAR(11)
);

/* 3. Intente crearla nuevamente. Aparece mensaje de error.*/
/*CREATE TABLE agenda(
    nombre VARCHAR(20),
    domicilio VARCHAR(30),
    telefono VARCHAR(11)
);
*/

/* 4. Visualice las tablas existentes (show tables). */
SHOW TABLES;

/* 5. Visualice la estructura de la tabla "agenda" (describe agenda). */
DESCRIBE agenda;

/* 6. Elimine la tabla, si existe (drop table, if exists).*/
DROP TABLE IF EXISTS agenda;

/* 7. Intente eliminar la tabla sin la cláusula if exists (drop table agenda). 
   Debe aparecer un mensaje de error cuando no existe la tabla. */
/* DROP TABLE agenda; */
