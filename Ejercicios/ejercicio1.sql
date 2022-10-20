CREATE DATABASE ejercicio1;
USE ejercicio1;

CREATE TABLE estacion (
identificador INT AUTO_INCREMENT PRIMARY KEY,
latitud INT, longitud INT, altitud INT);

CREATE TABLE muestra (
identificador_estacion INT PRIMARY KEY REFERENCES estacion (identificador) ON DELETE CASCADE ON UPDATE CASCADE,
fecha DATE, 
temperatura_minima VARCHAR(15), 
temperatura_maxima VARCHAR(15), 
precipitaciones SMALLINT,
humedad_minima TINYINT, 
humedad_maxima TINYINT, 
velocidad_viento_minima SMALLINT, 
velocidad_viento_maxima SMALLINT);

SHOW TABLES;
SHOW COLUMNS FROM muestra;
SHOW COLUMNS FROM estacion;