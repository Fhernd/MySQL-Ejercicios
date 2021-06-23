/*
Problema: Insertar tres registros en la tabla usuarios y luego mostrar todos los registros de la tabla.
Primeramente eliminamos la tabla, si existe:
drop table if exists usuarios;
Creamos la tabla:
create table usuarios (
  nombre varchar(30),
  clave varchar(10)
);
Insertamos 3 registros:
insert into usuarios(nombre,clave) values ('MarioPerez','Marito');
insert into usuarios(nombre,clave) values ('MariaGarcia','Mary');
insert into usuarios(nombre,clave) values ('DiegoRodriguez','z8080');
Para ver los registros ejecutamos el comando select:
select nombre,clave from usuarios;
*/

drop table if exists usuarios;

create table usuarios (
  nombre varchar(30),
  clave varchar(10)
);

insert into usuarios(nombre,clave) values ('MarioPerez','Marito');
insert into usuarios(nombre,clave) values ('MariaGarcia','Mary');
insert into usuarios(nombre,clave) values ('DiegoRodriguez','z8080');

select nombre,clave from usuarios;
