CREATE DATABASE ejercicio2;
USE ejercicio2;

CREATE TABLE libro (
clave_libro INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(60), 
idioma VARCHAR(20),
formato VARCHAR(15), 
clave_editorial SMALLINT REFERENCES editorial(clave_editorial) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE tema (
clave_tema SMALLINT PRIMARY KEY, 
nombre VARCHAR(40));

CREATE TABLE autor (
clave_autor INT PRIMARY KEY AUTO_INCREMENT, 
nombre VARCHAR(60));

CREATE TABLE editorial 
(clave_editorial SMALLINT PRIMARY KEY, 
nombre VARCHAR(60),
direccion VARCHAR(60), 
telefono VARCHAR(15));
 
CREATE TABLE ejemplar (
clave_ejemplar INT PRIMARY KEY AUTO_INCREMENT, 
clave_libro INT REFERENCES libro (clave_libro) ON DELETE CASCADE ON UPDATE CASCADE,
numero_orden SMALLINT, 
edicion SMALLINT, 
ubicacion VARCHAR(15), 
categoria CHAR);

CREATE TABLE socio (
clave_socio INT PRIMARY KEY AUTO_INCREMENT, 
nombre VARCHAR(60), 
direccion VARCHAR(60), 
telefono VARCHAR(15), 
categoria CHAR);

CREATE TABLE prestamo (
clave_socio INT REFERENCES socio(clave_socio) ON DELETE CASCADE ON UPDATE CASCADE,
clave_ejemplar INT REFERENCES ejemplar(clave_ejemplar) ON DELETE CASCADE ON UPDATE CASCADE,
numero_orden SMALLINT REFERENCES ejemplar(numero_orden) ON DELETE CASCADE ON UPDATE CASCADE, 
fecha_prestamo DATE,
fecha_devolucion DATE,
notas BLOB,
PRIMARY KEY (clave_socio, clave_ejemplar));

CREATE TABLE trata_sobre (
clave_libro INT REFERENCES libro(clave_libro) ON DELETE CASCADE ON UPDATE CASCADE,
clave_tema SMALLINT REFERENCES tema(clave_tema) ON DELETE CASCADE ON UPDATE CASCADE,
PRIMARY KEY (clave_libro, clave_tema));

CREATE TABLE escrito_por (
clave_libro INT REFERENCES libro(clave_libro) ON DELETE CASCADE ON UPDATE CASCADE,
clave_autor INT REFERENCES autor(clave_autor) ON DELETE CASCADE ON UPDATE CASCADE,
PRIMARY KEY(clave_libro, clave_autor));

show tables;
show columns from ejemplar;