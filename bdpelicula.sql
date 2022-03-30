drop database if exists cartelera;

create database cartelera;

CREATE TABLE peliculas
(id  MEDIUMINT NOT NULL AUTO_INCREMENT,
titulo char(50),
duracion int,
descripcion char(50),
caratula char(50),
trailer char(255)
PRIMARY KEY (id));

CREATE TABLE usuarios(
id MEDIUMINT NOT NULL AUTO_INCREMENT,
login varchar(100),
pass_hash varchar(255),
PRIMARY KEY (id)
);

