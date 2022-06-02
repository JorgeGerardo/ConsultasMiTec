--MiTec Version 2:
use MiTec
create database MiTec
GO

CREATE TABLE Consultas(
ID int PRIMARY KEY IDENTITY(1,1),
Fecha DATETIME DEFAULT GETDATE(),
NombrePaciente VARCHAR(80),
Edad int,
Sexo VARCHAR(20),
SUB VARCHAR(30),
Carrera VARCHAR(50),
Diagnostico VARCHAR(500),
);
GO


--RECETAS---------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Recetas(
    IDR int PRIMARY KEY IDENTITY(1,1),
    Edad int,
    Fecha DATETIME DEFAULT GETDATE(),
    NombrePaciente VARCHAR(50)
)

GO
CREATE TABLE DetallesReceta(
    IDR INT,
    Medicamento VARCHAR(50),
    CONSTRAINT FK_RecetaID FOREIGN KEY (IDR) REFERENCES Recetas(IDR)
);
--RECETAS---------------------------------------------------------------------------------------------------------------------------------



SELECT ISNULL(MAX(IDR)+1,1) FROM Recetas


