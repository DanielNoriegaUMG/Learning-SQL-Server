-- Operador logicos
-- >=, =, <=, <, > ,!=

USE company;

-- ver empleados con sueldos mayores o iguales a 4500.00
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

-- mostrar los empleados que pertenezcan al departamento  de sistemas, RRHH, Produccion
SELECT *FROM [dbo].[employees] AS [e]
WHERE [e].[departament_id] IN (1,2,3);

-- mostrar los empleados que no pertenezcan al departamento de sistemas, RRHH, Produccion
SELECT *FROM [dbo].[employees] AS [e]
WHERE [e].[departament_id] NOT IN (1,2,3);

-- Mostrar empleados que no tengan un departamento asignado
SELECT *FROM [dbo].[employees] AS [e]
WHERE [e].[departament_id] IS NULL;

-- mostar empleados que SI tengan un departamento asignado
SELECT *FROM [dbo].[employees] AS [e]
WHERE [e].[departament_id] IS NOT NULL;

SELECT *FROM [dbo].[departaments];

-- Operadores BETWEEN, EXISTS, LIKE

-- Buscar los empleados Que empiecen con letra A seguido de cualquier cosa
SELECT *FROM [dbo].[employees] AS [e]
WHERE [e].[employee_name] LIKE 'A%';

--Buscar los empleados que tengan una N en medio del nombre
SELECT *FROM [dbo].[employees] AS [e]
WHERE [e].[employee_name] LIKE '%N%';

-- Buscar lo empleados que tengan una N al final de su nombre
SELECT *FROM [dbo].[employees] AS [e]
WHERE [e].[employee_name] LIKE '%N';

-- Seleccionar los empleados con un sueldo entre 6000 y 9500
SELECT *FROM [dbo].[employees] AS [e]
WHERE [e].[employee_salary] BETWEEN 6000.00 AND 9500.00;

-- Seleccionar empleados que cumplan años entre 1990-01-01 hasta 2002-01-01
SELECT *FROM [dbo].[employees] AS [e]
WHERE [e].[employee_birthday] BETWEEN '1990-01-01' AND '2002-01-01'
ORDER BY [e].employee_birthday ASC;

-- Seleccionar empleados que sus apellidos inicien con las letras M y A por arden alfabetico
SELECT *FROM [dbo].employees AS [e]
WHERE [e].[employee_surname] LIKE '[MA]%'
ORDER BY [e].[employee_surname] ASC;

-- Seleccionar empleados en donde su apellidos inicien desde la A hasta la E
SELECT *FROM [dbo].employees AS [e]
WHERE [e].[employee_surname] LIKE '[A-E]%'
ORDER BY [e].[employee_surname] ASC;