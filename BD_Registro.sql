CREATE DATABASE REGISTRO;
USE REGISTRO;

CREATE TABLE PERSONA(
ID INT AUTO_INCREMENT PRIMARY KEY,
NOMBRE VARCHAR(50),
CORREO VARCHAR(100),
NACIONALIDAD VARCHAR(50)
);

INSERT INTO PERSONA VALUES(null,'Aimar','aimar@gmail.com','Peruano');
INSERT INTO PERSONA VALUES(null,'Eros','erosfake500@gmail.com','Turco');
INSERT INTO PERSONA VALUES(null,'Chiclayo','chica_yo@gmail.com','Chileno');