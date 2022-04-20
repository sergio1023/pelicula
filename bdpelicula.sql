drop database if exists cartelera;
create database cartelera;
use cartelera;

drop table if exists  usuarios;
drop table if exists  peliculas;


CREATE TABLE peliculas
(id  MEDIUMINT NOT NULL AUTO_INCREMENT,
titulo varchar(100),
duracion int,
descripcion varchar(2048),
caratula varchar(255),
trailer varchar(255),
PRIMARY KEY (id)
);

insert into peliculas
values(1,'infinite',106,'Evan McCauley tiene habilidades que nunca ha aprendido y recuerdos de lugares que no ha visitado. Automedicado y al borde del colapso mental, un grupo secreto que se autodenomina "Infinitos" acude a su rescate, revelando que sus recuerdos son reales. Adaptación de la novela de D. Eric Maikranz.','https://asturscore.com/wp-content/uploads/2021/06/Caratula-BSO-Infinite-Harry-Gregson-Williams.jpg','https://www.youtube.com/watch?v=4sV28IXFIy8&ab_channel=CINECONECTA');
insert into peliculas
values(2,'joe bell',94,'Jadin, el hijo de Joe, es un agradable chico gay que sufre bullying en el instituto. La poca paciencia que tiene su padre no le ayuda en su situación. Un día, Joe decide recorrer Estados Unidos para hablar en colegios, comunidades y con todo el que quiera escuchar sobre los peligros del bullying','https://www.themoviedb.org/t/p/original/gw05NoWZXv5r2CsbSlAddiofgZd.jpg','https://www.youtube.com/watch?v=ZnClM51ZbXI&ab_channel=Franklg');
insert into peliculas
values(3,'alerta roja',118,'Cuando la Interpol envía una "Alerta roja", significa que los departamentos de Policía de todo el mundo deben estar alerta para capturar a los criminales más buscados. Todas las alarmas saltan cuando un temerario robo une al mejor agente del FBI con dos criminales rivales entre sí. Una coincidencia que hará que suceda lo impredecible','http://www.nochedecine.com/wp-content/uploads/2021/09/nt_21_Red-Notice-interior.jpg','https://www.youtube.com/watch?v=UUZ_DITqers&ab_channel=NetflixEspa%C3%B1a');
insert into peliculas
values(4,'skyscraper',103,'Will Sawyer, antiguo líder del Equipo de Rescate de Rehenes del FBI y veterano de guerra del ejército de Estados Unidos, ahora se encarga de evaluar la seguridad de los rascacielos. Durante un viaje de trabajo en China, se ve incriminado en el incendio del edificio más alto y seguro del mundo. Perseguido y a la fuga, Will deberá encontrar a los que le han tendido la trampa, limpiar su nombre y rescatar a su familia, atrapada en el interior del rascacielos… sin sucumbir a las llamas','https://www.diariodevenusville.com/wp-content/uploads/2018/07/EL-RASCACIELOS-caratula-1.jpg','https://www.youtube.com/watch?v=iWUFjsuiT5k&ab_channel=TrailersInSpanish');

CREATE TABLE usuarios(
id MEDIUMINT NOT NULL AUTO_INCREMENT,
login varchar(100),
pass_hash varchar(255),
PRIMARY KEY (id)
);



