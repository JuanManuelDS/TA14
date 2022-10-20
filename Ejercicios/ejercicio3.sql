CREATE DATABASE ejercicio3;
USE ejercicio3;

CREATE TABLE fabricantes (
codigo INT AUTO_INCREMENT,
nombre VARCHAR(100),
PRIMARY KEY (codigo));

CREATE TABLE articulos (
codigo INT AUTO_INCREMENT,
nombre VARCHAR(100),
precio INT,
fabricante INT NOT NULL REFERENCES fabricantes(codigo) ON DELETE CASCADE ON UPDATE CASCADE,
PRIMARY KEY (codigo));

show tables;
