CREATE DATABASE enterprise;

-- Modificar el nombre de la base de datos
ALTER DATABASE enterprise MODIFY NAME = company;

USE company;
CREATE TABLE [dbo].[employees](
	[employee_id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[employee_name] VARCHAR (100) NULL,
	[employee_birthday] DATE NOT NULL,
	[employee_gender]INT NOT NULL,
	[employee_salary] DECIMAL(6,2) NOT NULL,
	[position_name] VARCHAR(50) NOT NULL,
	[created] DATETIME NOT NULL,
	[departament_id] INT NULL
);

CREATE TABLE [dbo].[departaments](
	[departament_id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[departament_name] VARCHAR(75) NOT NULL
);

-- agregar llave foranea
ALTER TABLE [dbo].[employees]
ADD CONSTRAINT employees_departaments_fk
FOREIGN KEY ([departament_id])
REFERENCES [dbo].[departaments] (departament_id);

--borrar llave foranea
ALTER TABLE [dbo].[employees]
DROP CONSTRAINT employees_departaments_fk;

-- borrar tablas
DROP TABLE [dbo].[departaments];
DROP TABLE [dbo].[employees];

--Cambiar el tipo de dato de una columna
ALTER TABLE employees
ALTER COLUMN employee_salary DECIMAL(6,2);