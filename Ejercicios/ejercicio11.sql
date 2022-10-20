CREATE DATABASE ejercicio11;
USE ejercicio11;

CREATE TABLE facultad (
codigo INT AUTO_INCREMENT,
nombre VARCHAR(100),
PRIMARY KEY (codigo));

CREATE TABLE investigadores (
DNI VARCHAR(8),
nombre VARCHAR (255),
facultad INT NOT NULL REFERENCES facultad(codigo) ON DELETE CASCADE ON UPDATE CASCADE,
PRIMARY KEY (DNI));

CREATE TABLE equipos (
num_serie CHAR(4),
nombre VARCHAR(100),
facultad INT NOT NULL REFERENCES facultad (codigo) ON DELETE CASCADE ON UPDATE CASCADE,
PRIMARY KEY (num_serie));

CREATE TABLE reserva (
investigador VARCHAR(8) REFERENCES investigadores (DNI) ON DELETE CASCADE ON UPDATE CASCADE,
num_serie CHAR (4) REFERENCES equipos (num_serie) ON DELETE CASCADE ON UPDATE CASCADE,
comienzo DATETIME,
fin DATETIME,
PRIMARY KEY (investigador, num_serie));

SHOW TABLES;
show columns from investigadores;
