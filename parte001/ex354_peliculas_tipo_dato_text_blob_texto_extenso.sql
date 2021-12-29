DROP TABLE IF EXISTS peliculas;

CREATE TABLE peliculas(
  codigo INT UNSIGNED AUTO_INCREMENT,
  nombre VARCHAR(40),
  actor VARCHAR(30),
  duracion TINYINT UNSIGNED,
  sinopsis TEXT,
  PRIMARY KEY (codigo)  
 );

INSERT INTO peliculas VALUES (1,'Mentes que brillan','Jodie Foster',120,
 'El no entiende al mundo ni el  mundo lo entiende a él, es un niño superdotado. La escuela 
especial a la que asiste tampoco resuelve los problemas del niño. Su madre hará todo lo que esté a 
su alcance para ayudarlo. Drama');

INSERT INTO peliculas VALUES (2,'Charlie y la fábrica de chocolate','J. Deep',120, 'Un niño llamado 
Charlie tiene la ilusión de encontrar uno de los 5 tickets del concurso para entrar a la fabulosa 
fábrica de chocolates del excéntrico Willy Wonka y descubrir el misterio de sus golosinas. 
Aventuras'); 

INSERT INTO peliculas VALUES (3,'La terminal','Tom Hanks',180, 'Sin papeles y esperando que el gobierno resuelva su situación migratoria, Victor convierte el aeropuerto de Nueva York en su nuevo hogar trasformando la vida de los empleados del lugar. Drama'); 

SELECT * FROM peliculas
  WHERE sinopsis LIKE '%Drama%';

SELECT * FROM peliculas
  WHERE sinopsis LIKE '%chocolates%';
