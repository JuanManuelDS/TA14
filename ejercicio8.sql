CREATE DATABASE ejercicio8;
USE ejercicio8;

CREATE TABLE piezas (
codigo INT AUTO_INCREMENT,
nombre VARCHAR(100),
PRIMARY KEY (codigo));

CREATE TABLE suministra (
codigo_pieza INT REFERENCES piezas(codigo) ON DELETE CASCADE ON UPDATE CASCADE,
id_proveedor CHAR(4) REFERENCES proveedores (id) ON DELETE CASCADE ON UPDATE CASCADE,
precio INT,
PRIMARY KEY (codigo_pieza, id_proveedor));

CREATE TABLE proveedores (
id CHAR (4),
nombre VARCHAR(100),
PRIMARY KEY (id));

show tables;
show columns from proveedores;