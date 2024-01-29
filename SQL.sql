CREATE DATABASE Reto21;
USE Reto21;
DROP TABLE IF EXISTS Clientes;
CREATE TABLE Clientes(
idCliente  INT PRIMARY KEY NOT NULL AUTO_INCREMENT,

Nombre VARCHAR (50),
Apellido VARCHAR (100),
Teléfono INT,
Dirección VARCHAR (500)
);
DROP TABLE IF EXISTS Reservas;
CREATE TABLE Reservas (
idReserva INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
Fecha DATE,
NúmeroPersonas INT,
idCliente INT,
FOREIGN KEY (idCliente) REFERENCES Clientes (idCliente)
);
DROP TABLE IF EXISTS Habitaciones;
CREATE TABLE Habitaciones(
NúmeroHabitación INT PRIMARY KEY,
Tamaño VARCHAR(30),
idReserva INT,
FOREIGN KEY (idReserva) REFERENCES Reservas (idReserva)
);
DROP TABLE IF EXISTS Empleados;
CREATE TABLE Empleados(
idEmpleado INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
NombreEmpleado VARCHAR (50),
Puesto VARCHAR (100),
idReserva INT,
FOREIGN KEY (idReserva) REFERENCES Reservas (idReserva)
);


