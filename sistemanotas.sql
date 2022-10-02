create database sistemanotas;
use sistemanotas;
CREATE TABLE Usuario (
Contraseña varchar (30),
Correo_Usuario varchar (30),
Id_Tripulante int,
Id_Docente int,
PRIMARY KEY (Correo_Usuario),
FOREIGN KEY (Id_Tripulante) REFERENCES Tripulante (Id_Tripulante),
FOREIGN KEY (Id_Docente) REFERENCES Docente (Id_Docente)
);

CREATE TABLE `Ciclo` (
  `Id_Ciclo` <type>,
  `Descripción` <type>,
  PRIMARY KEY (`Id_Ciclo`)
);

CREATE TABLE `Grupo` (
  `PK` Código_Grupo,
  `` Cant_Materias,
  `` Cant_Docentes,
  `` Cant_Estudiantes,
  `FK` Id_Ciclo,
  FOREIGN KEY (`FK`) REFERENCES `Ciclo`(`Id_Ciclo`)
);

CREATE TABLE `Docente` (
  `PK` Id_Docente,
  `` Nombre,
  `` Apellido,
  `FK` Id_Materia,
  `FK` Correo_Usuario,
  FOREIGN KEY (`FK`) REFERENCES `Materia`(`PK`)
);

CREATE TABLE `Materia` (
  `PK` Id_Materia,
  `` Nombre,
  `FK` Código_Grupo,
  `FK` Id_Nota,
  `FK` Id_Docente,
  `Fk` Id_Tripulante,
  FOREIGN KEY (`FK`) REFERENCES `Grupo`(`PK`),
  FOREIGN KEY (`Fk`) REFERENCES `Tripulante`(`PK`),
  FOREIGN KEY (`FK`) REFERENCES `Docente`(`PK`)
);

CREATE TABLE `Tripulante` (
  `PK` Id_Tripulante,
  `` Nombre,
  `` Apellido,
  `FK` Id_Materia,
  `FK` Correo_Usuario,
  FOREIGN KEY (`FK`) REFERENCES `Materia`(`PK`)
);

CREATE TABLE `Nota` (
  `PK` Id_Nota,
  `` Nota I,
  `` Nota II,
  `` Nota III,
  `` Nota IV,
  `FK` Id_Nivelación
);

CREATE TABLE `Nivelación` (
  `Id_Nivelación` <type>,
  `Nota` <type>,
  PRIMARY KEY (`Id_Nivelación`),
  FOREIGN KEY (`Id_Nivelación`) REFERENCES `Nota`(`FK`)
);