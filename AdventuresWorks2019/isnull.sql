SELECT *FROM [Purchasing].[Vendor];

SELECT [v].* FROM [Purchasing].[Vendor] AS [v];

SELECT [v].[AccountNumber],
		[v].[Name],
		[v].[PurchasingWebServiceURL]
FROM [Purchasing].[Vendor] AS [v];

SELECT [v].[AccountNumber],
		[v].[Name],
		ISNULL([v].[PurchasingWebServiceURL],'SIN URL') AS 'Web'
FROM [Purchasing].[Vendor] AS [v];