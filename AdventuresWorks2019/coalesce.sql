DECLARE @x AS VARCHAR(3) = NULL,
		@y AS VARCHAR(10) = '1234567890';

SELECT COALESCE(@x, @y) AS [COALESCE],
	ISNULL (@x, @y) AS [ISNULL]; 
	--NOTA IS NULL SOLO MOSTRARA LA CANTIDAD QUE SE LE PASE POR PARAMETRO A "X", en este caso 3 valores mostrara

SELECT *FROM [Production].[Product];

DECLARE @valor VARCHAR(30)= ' ',
		@n INT = 0;
SELECT [prod].[Name],
	COALESCE([prod].[Color], @valor) AS Color,
	COALESCE([prod].[Size], @valor) AS Size,
	COALESCE([prod].[SizeUnitMeasureCode], @valor) AS 'SizeUnitMeasureCode',
	COALESCE([prod].[Weight], @n) AS [Weight],
	COALESCE([prod].[ProductLine], @valor) AS ProductLine,
	COALESCE([prod].[Class], @valor) AS Class,
	COALESCE([prod].[Style], @valor) AS Style,
	COALESCE([prod].[ProductModelID], @n) AS ProductModelID
FROM [Production].[Product] AS [prod];