/*
Problema:
Para almacenar información de los libros de una librería necesitamos los siguientes campos:

 -titulo, cadena de caracteres de 40 de longitud,
 -autor, cadena de caracteres de 30 de longitud,
 -editorial, caracteres de 15 de longitud,
 -precio, valor numérico con decimales y
 -cantidad, valor numérico entero.
Al crear la tabla, entonces, elegimos el tipo de dato más adecuado para cada campo:

 create table libros(
  titulo varchar(40),
  autor varchar(20),
  editorial varchar(15),
  precio float,
  cantidad integer
 );
Vemos la estructura de la tabla:

 describe libros;
Ingresamos algunos registros:

 insert into libros (titulo,autor,editorial,precio,cantidad)
  values ('El aleph','Borges','Emece',45.50,100);
 insert into libros (titulo,autor,editorial,precio,cantidad)
  values ('Alicia en el pais de las maravillas','Lewis Carroll',
  'Planeta',25,200);
 insert into libros (titulo,autor,editorial,precio,cantidad)
  values ('Matematica estas ahi','Paenza','Planeta',15.8,200);
Veamos los registros cargados:

 select titulo,autor,editorial,precio,cantidad from libros;
Tengamos en cuenta que es lo mismo escribir:

select * from libros;
Es una forma resumida de indicar que seleccione todos los campos de la tabla.
*/

drop table if exists libros;

create table libros(
	titulo varchar(40),
	autor varchar(20),
	editorial varchar(15),
	precio float,
	cantidad integer
);

insert into libros (titulo,autor,editorial,precio,cantidad)
  values ('El aleph','Borges','Emece',45.50,100);
insert into libros (titulo,autor,editorial,precio,cantidad)
  values ('Alicia en el pais de las maravillas','Lewis Carroll','Planeta',25,200);
insert into libros (titulo,autor,editorial,precio,cantidad)
  values ('Matematica estas ahi','Paenza','Planeta',15.8,200);

select * from libros;
