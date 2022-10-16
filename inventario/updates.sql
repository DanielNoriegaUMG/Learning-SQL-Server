-- UPDATE a un producto en especifico
UPDATE [dbo].[products]
SET [product_description] = 'Lapiz Profesional de Puntillas finas'
WHERE [product_id] = 4;

SELECT *FROM [dbo].[products];

UPDATE [dbo].[orderDetails]
SET [notes] = 'Pago adelantado'
WHERE [orderDetail_id] = 1;

SELECT *FROM[dbo].[orderDetails];

-- update masivo (afectara a todos los datosde la tabla
UPDATE [dbo].[orderDetails]
SET [orderDetail_price] = 15;

SELECT *FROM[dbo].[orderDetails];

-- Update por medio de fechas
UPDATE [dbo].[orders]
SET [order_date] = GETDATE()
WHERE [order_id] = 2;

SELECT *FROM [dbo].[orders];