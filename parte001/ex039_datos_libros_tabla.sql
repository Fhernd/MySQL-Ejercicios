/*
A) Queremos almacenar información referente a nuestros libros.
1- Elimine la tabla "libros", si existe.

2- Cree una tabla llamada "libros". 
   Debe definirse con los siguientes campos: 
   titulo varchar(20), 
   autor varchar(30),
 y editorial varchar(15)

3- Intente crearla nuevamente. Aparece mensaje de error.

4- Visualice las tablas existentes.

5- Visualice la estructura de la tabla "libros".

6- Elimine la tabla, si existe.

7- Intente eliminar la tabla.
*/

DROP TABLE IF EXISTS libros;

CREATE TABLE libros (
    titulo VARCHAR(20),
    autor VARCHAR(30),
    editorial VARCHAR(15)
);

SHOW TABLES;

DESCRIBE libros;

DROP TABLE IF EXISTS libros;
