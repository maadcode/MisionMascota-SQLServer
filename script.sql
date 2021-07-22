CREATE DATABASE MisionMascota;

USE MisionMascota;

CREATE TABLE Usuarios(
    usuario varchar(20) NOT NULL,
    password varchar(20) NOT NULL
)

CREATE TABLE EstadosMascota(
    idEstadoMascota int PRIMARY KEY,
    estado varchar(10) NOT NULL
)

CREATE TABLE Mascotas(
    idMascota int PRIMARY KEY AUTO_INCREMENT,
    nombreMascota varchar(20) NOT NULL,
    raza varchar(20),
    fechaNac date NOT NULL,
    peso float(5,2),
    idEstadoMascota int NOT NULL,
    fechaIng date,
    imagenMascota varchar(100),
    FOREIGN KEY (idEstadoMascota) REFERENCES EstadosMascota(idEstadoMascota)
)

CREATE TABLE Adoptantes(
    idAdoptante int PRIMARY KEY AUTO_INCREMENT,
    nombreAdoptante varchar(30) NOT NULL,
    apellidoAdoptante varchar(50) NOT NULL,
    DNI char(8) NOT NULL UNIQUE,
    edad int NOT NULL,
    telefono varchar(15),
    direccion varchar(50) NOT NULL,
    correo varchar(50),
    propietarioCasa ENUM('SI','NO') NOT NULL,
    permisoDepa ENUM('SI','NO') NOT NULL
)

CREATE TABLE Adopciones(
    idAdopcion int PRIMARY KEY,
    idAdoptante int NOT NULL,
    idMascota int NOT NULL,
    fechaAdop date NOT NULL,
    FOREIGN KEY (idAdoptante) REFERENCES Adoptantes(idAdoptante),
    FOREIGN KEY (idMascota) REFERENCES Mascotas(idMascota)
)