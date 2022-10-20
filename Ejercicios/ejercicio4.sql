CREATE DATABASE ejercicio4;
USE ejercicio4;

CREATE TABLE empleados (
dni VARCHAR(8),
nombre VARCHAR(100),
apellidos VARCHAR (255),
departamento INT NOT NULL REFERENCES departamentos(codigo) ON DELETE CASCADE ON UPDATE CASCADE,
PRIMARY KEY (dni));

CREATE TABLE departamentos (
codigo INT,
nombre VARCHAR(100),
presupuesto INT,
PRIMARY KEY (codigo));

show tables;