USE inventario;
SELECT *FROM [dbo].[measures];
SELECT *FROM [dbo].[products];
SELECT *FROM [dbo].[orders];
SELECT *FROM [dbo].[orderDetails];

-----------------------------------------------
-- TOP (limite de registros a traer)
SELECT TOP (3) [product_id]
      ,[product_code]
      ,[product_description]
 FROM [inventario].[dbo].[products];

SELECT TOP (1000) [orderDetail_id]
      ,[order_id]
      ,[orderDetail_number]
      ,[product_id]
      ,[orderDetail_quantity]
      ,[orderDetail_price]
      ,[measure_id]
      ,[notes]
FROM [inventario].[dbo].[orderDetails];

-----------------------------------------------------
-- Sentencia WHERE (seleccionar donde X registro sean iguales, mayores, diferentes, nulos, no nulos,etc)

-- select con where para id mayor a 1
SELECT *FROM [inventario].[dbo].[orders]
WHERE order_id > 1;

-- select para id igual a 1
SELECT *FROM [inventario].[dbo].[orders]
WHERE order_id = 1;

--select para ver que descripciones de productos empiezan con letra L y siguen con cualquier letra
SELECT *FROM [inventario].[dbo].[products]
WHERE [product_description] LIKE 'L%';

-- select para ver los precioes iguales o mayores a 15
SELECT *FROM [inventario].[dbo].[orderDetails]
WHERE [orderDetail_price] >= 15;

-- select para ver las ordenedes donde tienen notas
SELECT *FROM [inventario].[dbo].[orderDetails]
WHERE [notes] IS NOT NULL;

-- select para ver las ordenes donde no hay notas
SELECT *FROM [inventario].[dbo].[orderDetails]
WHERE [notes] IS NULL;

-- select para las compras de la orden 1
SELECT *FROM [inventario].[dbo].[orderDetails]
WHERE [order_id] = 1;

-- INNER JOIN (con alias)
SELECT [ord].order_date, [det].*
FROM [dbo].[orders] AS [ord]
INNER JOIN [dbo].[orderDetails] AS [det]
ON [ord].[order_id] = [det].order_id
WHERE [ord].order_id = 1;

SELECT [ord].order_date AS 'FECHA VENTA', [p].product_description AS 'NOMBRE PRODUCTO', [det].[orderDetail_quantity] AS 'CANTIDAD',[det].[orderDetail_price] AS 'PRECIO', [m].[measure_description] AS 'DESCRIPCION PRODUCTO'
FROM [dbo].[orders] AS [ord]
INNER JOIN [dbo].[orderDetails] AS [det] ON [ord].[order_id] = [det].[order_id]
INNER JOIN [dbo].[products] AS [p] ON [det].[product_id] = [p].[product_id]
INNER JOIN [dbo].[measures] AS [m] ON [det].[measure_id] = [m].[measure_id]
WHERE [ord].[order_id] = 2;
