CREATE DATABASE ejercicio6;
USE ejercicio6;

CREATE TABLE salas (
codigo INT AUTO_INCREMENT,
nombre VARCHAR(100) KEY,
pelicula INT REFERENCES peliculas(codigo) ON DELETE CASCADE ON UPDATE CASCADE,
PRIMARY KEY (codigo));

CREATE TABLE peliculas (
codigo INT AUTO_INCREMENT,
nombre VARCHAR(100) KEY,
calificacion_edad INT,
PRIMARY KEY (codigo));

show tables;
show columns from salas;
