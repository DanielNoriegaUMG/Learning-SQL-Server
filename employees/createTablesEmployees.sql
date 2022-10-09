CREATE DATABASE enterprise;

-- Modificar el nombre de la base de datos
ALTER DATABASE enterprise MODIFY NAME = company;

USE company;
CREATE TABLE [dbo].[employees](
	[employee_id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[employee_name] VARCHAR (100) NULL,
	[departament_id] INT NULL
);

CREATE TABLE [dbo].[departaments](
	[departament_id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[departament_name] VARCHAR(75) NOT NULL
);