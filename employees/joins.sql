USE company;

SELECT [e].[employee_name] AS "EMPLEADO", [d].[departament_name] AS "DEPARTAMENTO"
FROM [dbo].[employees] AS [e]
INNER JOIN [dbo].[departaments] AS [d] ON [e].[departament_id] = [d].[departament_id]
WHERE [e].[departament_id] = 1;

SELECT [e].[employee_name] AS "EMPLEADO", [d].[departament_name] AS "DEPARTAMENTO"
FROM [dbo].[employees] AS [e]
INNER JOIN [dbo].[departaments] AS [d] ON [e].[departament_id] = [d].[departament_id]
WHERE [e].[departament_id] >= 3;

SELECT [e].[employee_name] AS "EMPLEADO", [d].[departament_name] AS "DEPARTAMENTO"
FROM [dbo].[employees] AS [e]
INNER JOIN [dbo].[departaments] AS [d] ON [e].[departament_id] = [d].[departament_id]
WHERE [e].[departament_id] BETWEEN 1 AND 3;

SELECT [e].[employee_name] AS "EMPLEADO", [d].[departament_name] AS "DEPARTAMENTO"
FROM [dbo].[employees] AS [e]
LEFT JOIN [dbo].[departaments] AS [d] ON [e].[departament_id] = [d].[departament_id]
WHERE [e].[departament_id] IS NULL;