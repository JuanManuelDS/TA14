CREATE DATABASE ejercicio7;
USE ejercicio7;

CREATE TABLE directores (
dni VARCHAR(8),
nom_apels VARCHAR(255) KEY,
DNI_jefe VARCHAR(8) REFERENCES directores (dni) ON DELETE CASCADE ON UPDATE CASCADE,
despacho INT REFERENCES despachos (numero) ON DELETE CASCADE ON UPDATE CASCADE,
PRIMARY KEY (dni));

CREATE TABLE despachos (
numero INT,
capacidad INT,
PRIMARY KEY (numero));

SHOW TABLES;
SHOW COLUMNS FROM directores;