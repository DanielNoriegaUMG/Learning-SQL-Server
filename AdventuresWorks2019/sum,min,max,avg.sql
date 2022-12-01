SELECT SUM([UnitPrice]) AS 'SUMA DE LOS PRODUCTOS' FROM [Purchasing].[PurchaseOrderDetail] AS [orden];

SELECT MAX(UnitPrice) AS 'PRODUCTO MAS CARO' FROM [Purchasing].[PurchaseOrderDetail];

SELECT *FROM [Purchasing].[PurchaseOrderDetail] AS [p]
WHERE [p].[UnitPrice] = 82.8345;

SELECT MIN(UnitPrice) AS 'PRODUCTO MAS BARATO' FROM [Purchasing].[PurchaseOrderDetail];