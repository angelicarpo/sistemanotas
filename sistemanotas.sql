create database sistemanotas;
use sistemanotas;
CREATE TABLE Usuario (
Correo_Usuario varchar (30),
Id_Tripulante int,
Id_Docente int,
Contraseña varchar (30),
PRIMARY KEY (Correo_Usuario),
FOREIGN KEY (Id_Tripulante) REFERENCES Tripulante (Id_Tripulante),
FOREIGN KEY (Id_Docente) REFERENCES Docente (Id_Docente)
);

CREATE TABLE Ciclo (
  Id_Ciclo int,
  Descripcion varchar(20),
  PRIMARY KEY (Id_Ciclo)
);

CREATE TABLE Grupo (
  Codigo_Grupo varchar(10),
  Cant_Materias int,
  Cant_Docentes int,
  Cant_Estudiantes int,
  Id_Ciclo int,
  PRIMARY KEY (Codigo_Grupo),
  FOREIGN KEY (Id_Ciclo) REFERENCES Ciclo (Id_Ciclo)

);

CREATE TABLE Docente (
  Id_Docente int,
  Nombre varchar(30),
  Apellido varchar(30),
  Id_Materia int,
  Correo_Usuario varchar (30),
  PRIMARY KEY (Id_Docente),
  FOREIGN KEY(Id_Materia) REFERENCES Materia(Id_Materia) ,
  FOREIGN KEY (Correo_Usuario) REFERENCES Usuario (Correo_Usuario)
);

CREATE TABLE Materia (
  Id_Materia int,
  Nombre varchar(30),
  Codigo_Grupo varchar(10),
  Id_Nota varchar(10),
   Id_Docente int,
  Id_Tripulante int,
  PRIMARY KEY (Id_Materia),
  FOREIGN KEY (Codigo_Grupo) REFERENCES Grupo(Codigo_Grupo),
  FOREIGN KEY (Id_Nota) REFERENCES Nota(Id_Nota),
  FOREIGN KEY (Id_Tripulante) REFERENCES Tripulante(Id_Tripulante),
  FOREIGN KEY (Id_Docente) REFERENCES Docente(Id_Docente)
);

CREATE TABLE Tripulante (
 Id_Tripulante int,
 Nombre varchar(30),
 Apellido varchar(30),
 Id_Materia int,
 Correo_Usuario varchar (30),
  PRIMARY KEY (Id_Tripulante),
  FOREIGN KEY (Id_Materia) REFERENCES Materia(Id_Materia),
  FOREIGN KEY (Correo_Usuario) REFERENCES Usuario (Correo_Usuario)
);

CREATE TABLE Nota(
 Id_Nota varchar(10),
  Nota1 float,
  Nota2 float,
  Nota3 float,
  Nota4 float,
  Id_Nivelación int,
  PRIMARY KEY (Id_Nota),
  FOREIGN KEY (Id_Nivelación) REFERENCES Nivelación (Id_Nivelación)
);

CREATE TABLE Nivelación (
  Id_Nivelación int,
  Nota float,
  PRIMARY KEY (Id_Nivelación)

);