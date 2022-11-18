-- sentencia TOP y DISTINCT

USE company;

SELECT TOP(3) *FROM [dbo].[employees];

SELECT TOP(10) *FROM [dbo].[employees] AS [e]
ORDER BY [e].[created] ASC;

SELECT *FROM [dbo].[employees];

-- seleccionar todos los saraios y no mostrar mas de dos veces si encuentra un salario repetido
SELECT DISTINCT [e].[employee_salary] FROM [dbo].[employees] AS [e];