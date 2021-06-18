/*
Problema: Crear la tabla usuarios con los campos nombre y clave. Previamente borrar la tabla usuarios si ya existe en el servidor. Finalmente mostrar la 
estructura de la tabla usuarios que acabamos de crear.
*/

drop table if exists usuarios;

create table usuarios (
  nombre varchar(30),
  clave varchar(10)
);

describe usuarios;
