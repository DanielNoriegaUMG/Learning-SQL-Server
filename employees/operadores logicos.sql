-- Operador logicos
-- >=, =, <=, <, > ,!=

USE company;

-- ver empleados con sueldos maypres o iguales a 4500.00
SELECT *FROM [dbo].[employees] AS [e]
WHERE [e].[employee_salary] >= 4500.00;

-- ver empleados con sueldos menores o iguales a 4000
SELECT *FROM [dbo].[employees] AS [e]
WHERE [e].[employee_salary] <= 4000;


-- ver el numero de empleados que tenga un sueldo mayor o igual a 4500.00
SELECT COUNT([e].[employee_salary]) AS 'Empleados con sueldos altos' FROM [dbo].[employees] AS [e]
WHERE [e].[employee_salary] >= 4500;


--ver los empleados que pertenezcan a al departamento de ventas
SELECT *FROM [dbo].[employees] AS [e]
WHERE [e].[departament_id] = 4;


-- ver a empleados que ganen diferente de 9500,  9500.90 y 9000
SELECT *FROM [dbo].[employees] AS [e]
WHERE [e].[employee_salary] != 9500 
	AND [e].[employee_salary] != 9500.90 
	AND [e].[employee_salary] != 9000.00;