-- UNION ALL		--> aparecen todas las filas repetidas
-- UNION			--> devuelve filas distintas o unicas (no repetidas)
-- INTERSECT		--> devuelve filasen que ambas consultas son devueltas
-- EXCEPT			--> devuelve filas encontradas en el primer query y adeas descartas las filas encontradas en el 2do o 3er query.

USE company;

-- Traera duplicados porque une dos consultas
SELECT *FROM [dbo].employees AS [e]
WHERE [e].[employee_surname] LIKE '[^msa]%'
UNION ALL
SELECT *FROM [dbo].employees AS [e]
WHERE [e].[employee_salary] <= 5500.00;

-- Misma query de arriba, pero identificando de que query es la tupla
SELECT *, 'Query 1' AS 'Soruce' FROM [dbo].employees AS [e]
WHERE [e].[employee_surname] LIKE '[^msa]%'
UNION ALL
SELECT *, 'Query 2' AS 'Soruce' FROM [dbo].employees AS [e]
WHERE [e].[employee_salary] <= 5500.00;