SELECT *FROM [Purchasing].[PurchaseOrderDetail];
SELECT *FROM [Production].[Product];
SELECT COUNT(*) AS 'TOTAL DE REGISTROS' FROM [Purchasing].[PurchaseOrderDetail];

SELECT
	[prod].[name],
	[orden].[UnitPrice],
	CASE 
		WHEN [orden].[UnitPrice] >= 40.00
			THEN UPPER('premium')
		WHEN [orden].[UnitPrice] >= 25.00 AND [orden].[UnitPrice] < 40.00
			THEN ('Accesible')
		WHEN [orden].[UnitPrice] < 25.00
			THEN LOWER('normal')
		END AS 'STATUS PRECIO'
FROM [Purchasing].[PurchaseOrderDetail] AS [orden]
INNER JOIN [Production].[Product] AS [prod] ON [prod].[ProductID] = [orden].[ProductID];