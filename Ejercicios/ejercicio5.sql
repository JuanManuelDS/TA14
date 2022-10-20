CREATE DATABASE ejercicio5;
USE ejercicio5;

CREATE TABLE almacenes (
codigo INT AUTO_INCREMENT,
lugar VARCHAR(100),
capacidad INT,
PRIMARY KEY (codigo));

CREATE TABLE cajas (
num_referencia CHAR(5),
contenido NVARCHAR(100),
valor INT,
almacen INT NOT NULL REFERENCES almacenes(codigo) ON DELETE CASCADE ON UPDATE CASCADE,
PRIMARY KEY (num_referencia));

SHOW TABLES;