-- Insertar solo un registro
INSERT INTO [dbo].[measures] ([measure_code],[measure_description]) VALUES('Pz','Pieza');

--Insertar varios registros
INSERT INTO [dbo].[measures] ([measure_code],[measure_description]) 
VALUES ('H87','Hibrido 1987'),
	('EA','Elemento'),
	('Kg','Kilogramo'),
	('Lt','Litro');

-----------------------------------------

INSERT INTO [dbo].[products] ([product_code],[product_description])
VALUES ('LPR','Libreta Profesional con Rayas'),
	('LPC','Libreta Profesional a Cuadros'),
	('GM','Goma bicolor azul-rojo'),
	('LPP','Lapiz Profesional de Puntillas'),
	('HBC','Hoja Blanca Tamaño Carta');

-----------------------------------------

INSERT INTO [dbo].[orders] ([order_number],[order_date],[order_status])
VALUES(1000,GETDATE(),1);
-- GETDATE() es para obtener la fecha actual del sistema

-----------------------------------------

INSERT INTO [dbo].[orders] ([order_number],[order_date],[order_status])
OUTPUT inserted.order_id
VALUES(1001,GETDATE(),1);

-----------------------------------------

INSERT INTO [dbo].[orders] ([order_number],[order_date],[order_status])
OUTPUT inserted.order_id
VALUES(1002,GETDATE(),1);
-- OUTPUT inserted.order_id regresa el ultimo id insertado en la tabal y lo muestra

-----------------------------------------

INSERT INTO [dbo].[orderDetails]
	([order_id],
	[orderDetail_number],
	[product_id],
	[orderDetail_quantity],
	[orderDetail_price],
	[measure_id])
VALUES 
	(1,1,1,10,40,1),
	(1,2,3,10,10,1),
	(1,3,4,10,25,1),
	(1,4,5,10,1,1);

-----------------------------------------

INSERT INTO [dbo].[orderDetails]
	([order_id],
	[orderDetail_number],
	[product_id],
	[orderDetail_quantity],
	[orderDetail_price],
	[measure_id])
VALUES
	(2,1,2,5,40,1),
	(2,2,3,2,10,1);

-----------------------------------------

INSERT INTO [dbo].[orderDetails]
	([order_id],
	[orderDetail_number],
	[product_id],
	[orderDetail_quantity],
	[orderDetail_price],
	[measure_id],
	[notes])
VALUES
	(3,1,2,5,80,1,'Pendiente de pago'),
	(3,2,3,2,20,1,'Normalizar IVA'),
	(3,3,5,5,100,1,'Pagos trimestrales'),
	(3,4,4,2,25,1,'Normas ISO'),
	(3,5,1,5,65,1,'Credito de compras');