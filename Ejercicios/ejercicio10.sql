CREATE DATABASE ejercicio10;
USE ejercicio10;

CREATE TABLE cajeros (
codigo INT AUTO_INCREMENT,
nom_apels VARCHAR(255),
PRIMARY KEY (codigo));

CREATE TABLE venta (
cajero INT REFERENCES cajeros (codigo) ON DELETE CASCADE ON UPDATE CASCADE,
maquina INT REFERENCES maquinas_registradoras (codigo) ON DELETE CASCADE ON UPDATE CASCADE,
producto INT REFERENCES productos (codigo) ON DELETE CASCADE ON UPDATE CASCADE,
PRIMARY KEY (cajero, maquina, producto));

CREATE TABLE maquinas_registradoras (
codigo INT AUTO_INCREMENT,
piso INT,
PRIMARY KEY (codigo));

CREATE TABLE productos (
codigo INT AUTO_INCREMENT,
nombre VARCHAR (100),
precio INT,
PRIMARY KEY (codigo));

SHOW TABLES;
SHOW COLUMNS FROM maquinas_registradoras;