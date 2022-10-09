USE company;

-- Seleccionar empleados que pertenezcan al departamento con id 1
SELECT [e].[employee_name] AS "EMPLEADO", [d].[departament_name] AS "DEPARTAMENTO"
FROM [dbo].[employees] AS [e]
INNER JOIN [dbo].[departaments] AS [d] ON [e].[departament_id] = [d].[departament_id]
WHERE [e].[departament_id] = 1;


-- Seleccionar empleados que tengan un id mayor o igual a 3
SELECT [e].[employee_name] AS "EMPLEADO", [d].[departament_name] AS "DEPARTAMENTO"
FROM [dbo].[employees] AS [e]
INNER JOIN [dbo].[departaments] AS [d] ON [e].[departament_id] = [d].[departament_id]
WHERE [e].[departament_id] >= 3;


-- Seleccionar empleados en donde el departamento tenga un id entre 1 y 3
SELECT [e].[employee_name] AS "EMPLEADO", [d].[departament_name] AS "DEPARTAMENTO"
FROM [dbo].[employees] AS [e]
INNER JOIN [dbo].[departaments] AS [d] ON [e].[departament_id] = [d].[departament_id]
WHERE [e].[departament_id] BETWEEN 1 AND 3;

-- Seleccionar los empleados que no tengan un departamento asignado
SELECT [e].[employee_name] AS "EMPLEADO", [d].[departament_name] AS "DEPARTAMENTO"
FROM [dbo].[employees] AS [e]
LEFT JOIN [dbo].[departaments] AS [d] ON [e].[departament_id] = [d].[departament_id]
WHERE [e].[departament_id] IS NULL;


-- Seleccionar los empleados que su nombre inicie con S seguido de otra letra cualquiera
SELECT [e].[employee_name] AS "EMPLEADO", [d].[departament_name] AS "DEPARTAMENTO"
FROM [dbo].[employees] AS [e]
RIGHT JOIN [dbo].[departaments] AS [d] ON [e].[departament_id] = [d].[departament_id]
WHERE [e].[employee_name] LIKE 'S%';


-- Seleccionar los empleados que contengan una letra (S) se encuentre entre  letra y X letra
SELECT [e].[employee_name] AS "EMPLEADO", [d].[departament_name] AS "DEPARTAMENTO"
FROM [dbo].[employees] AS [e]
RIGHT JOIN [dbo].[departaments] AS [d] ON [e].[departament_id] = [d].[departament_id]
WHERE [e].[employee_name] LIKE '%S%';

SELECT *FROM [dbo].[employees];