CREATE DATABASE ejercicio12;
USE ejercicio12;

CREATE TABLE alumnos(
codigo INT AUTO_INCREMENT,
nombre VARCHAR(100),
apellido1 VARCHAR (100),
apellido2 VARCHAR (100),
dni VARCHAR(9),	
direccion VARCHAR(255),
sexo CHAR,
fecha_nacimiento DATE,
curso INT NOT NULL REFERENCES cursos(cod_curso) ON DELETE CASCADE ON UPDATE CASCADE,
PRIMARY KEY (codigo, dni));

CREATE TABLE cursos (
codigo INT AUTO_INCREMENT,
nombre VARCHAR(255) UNIQUE,
profesor VARCHAR(9) NOT NULL REFERENCES profesor(dni) ON DELETE CASCADE ON UPDATE CASCADE,
maximo_alumnos TINYINT,
fecha_inicio DATE,
fecha_fin DATE,
num_horas SMALLINT NOT NULL,
PRIMARY KEY (codigo));

CREATE TABLE profesores (
dni VARCHAR(9),
nombre VARCHAR(100) UNIQUE,
apellido1 VARCHAR (100),
apellido2 VARCHAR (100),
direccion VARCHAR(255),
titulo VARCHAR (100),
gana INT NOT NULL,
PRIMARY KEY (dni));
