create database sistemanotasbd;

use sistemanotasbd;

CREATE TABLE Usuario (
Correo_Usuario varchar(40),
Id_Tripulante int3,
Id_Docente int2,
Contraseña varchar(30),
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
  Cant_Materias int2,
  Cant_Docentes int2,
  Cant_Estudiantes int3,
  Id_Ciclo int1,
  PRIMARY KEY (Codigo_Grupo),
  FOREIGN KEY (Id_Ciclo) REFERENCES Ciclo (Id_Ciclo)

);

CREATE TABLE Docente (
  Id_Docente int2,
  Nombre varchar(30),
  Apellido varchar(30),
  Id_Materia int2,
  Correo_Usuario varchar (40),
  PRIMARY KEY (Id_Docente),
  FOREIGN KEY(Id_Materia) REFERENCES Materia(Id_Materia) ,
  FOREIGN KEY (Correo_Usuario) REFERENCES Usuario (Correo_Usuario)
);

CREATE TABLE Materia (
  Id_Materia int2,
  Nombre varchar(30),
  Codigo_Grupo varchar(10),
  Id_Nota varchar(10),
  Id_Docente int2,
  Id_Tripulante int3,
  PRIMARY KEY (Id_Materia),
  FOREIGN KEY (Codigo_Grupo) REFERENCES Grupo(Codigo_Grupo),
  FOREIGN KEY (Id_Nota) REFERENCES Nota(Id_Nota),
  FOREIGN KEY (Id_Tripulante) REFERENCES Tripulante(Id_Tripulante),
  FOREIGN KEY (Id_Docente) REFERENCES Docente(Id_Docente)
);

CREATE TABLE Tripulante (
 Id_Tripulante int3,
 Nombre varchar(30),
 Apellido varchar(30),
 Id_Materia int2,
 Correo_Usuario varchar (40),
 PRIMARY KEY (Id_Tripulante),
 FOREIGN KEY (Id_Materia) REFERENCES Materia(Id_Materia),
 FOREIGN KEY (Correo_Usuario) REFERENCES Usuario (Correo_Usuario)
);

CREATE TABLE Nota(
 Id_Nota varchar(10),
  Nota1 float(1,1),
  Nota2 float(1,1),
  Nota3 float(1,1),
  Nota4 float(1,1),
  Id_Nivelación int2,
  PRIMARY KEY (Id_Nota),
  FOREIGN KEY (Id_Nivelación) REFERENCES Nivelación (Id_Nivelación)
);

CREATE TABLE Nivelación (
  Id_Nivelación int2,
  Nota float(1,1),
  PRIMARY KEY (Id_Nivelación)
  FOREIGN KEY (Id_Nivelación) REFERENCES Nota(FK)

);
