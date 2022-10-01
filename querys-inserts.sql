-- Insertar solo un registro
INSERT INTO [dbo].[measures] ([measure_code],[measure_description]) VALUES('Pz','Pieza');

--Insertar varios registros
INSERT INTO [dbo].[measures] ([measure_code],[measure_description]) 
VALUES ('H87','Hibrido 1987'),
	('EA','Elemento'),
	('Kg','Kilogramo'),
	('Lt','Litro');

INSERT INTO [dbo].[products] ([product_code],[product_description])
VALUES ('LPR','Libreta Profesional con Rayas'),
	('LPC','Libreta Profesional a Cuadros'),
	('GM','Goma bicolor azul-rojo'),
	('LPP','Lapiz Profesional de Puntillas'),
	('HBC','Hoja Blanca Tamaño Carta');