CREATE DATABASE ejercicio9;
USE ejercicio9;

CREATE TABLE cientificos (
dni VARCHAR(8),
noms_apels VARCHAR(255) KEY,
PRIMARY KEY (DNI));

CREATE TABLE asignado_a (
cientifico VARCHAR(8) REFERENCES cientificos(DNI) ON DELETE CASCADE ON UPDATE CASCADE,
proyecto CHAR(4) REFERENCES proyecto(id) ON DELETE CASCADE ON UPDATE CASCADE,
PRIMARY KEY (cientifico, proyecto));

CREATE TABLE proyecto (
id CHAR(4),
nombre NVARCHAR(255) KEY,
horas INT,
PRIMARY KEY (id));

show tables;
show columns from asignado_a;