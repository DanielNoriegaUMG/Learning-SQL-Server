USE company;
SELECT *FROM [dbo].[employees];

-- Reiniciar ID
TRUNCATE TABLE [dbo].[employees];
DBCC CHECKIDENT(employees,RESEED,1);

INSERT INTO [dbo].[employees] ([employee_name], [employee_surname] ,[employee_birthday],[employee_gender],
[employee_salary],[position_name], [created], [departament_id])
VALUES ('Axel','Romario','1980-08-22',0,6500.00,'Generalista',GETDATE(), 1),
	('Melany','Salazar','2002-04-26',1,9500,'Supervisora',GETDATE(),2),
	('Cindy','Chajon','1980-08-13',1,9000.00,'CTO',GETDATE(),3),
	('Aroldo','Juarez','1992-01-28',0,3500.20,'Jefe de bodega',GETDATE(),4),
	('Monica','Galindo','2001-09-15',0,4000.00,'Secretaria',GETDATE(),NULL),
	('Alondra','Rosas','1999-12-20',0,3200.89,'Empacadora',GETDATE(),2),
	('Aylin','Santos','2001-10-12',0,9500.90,'Supervisora',GETDATE(),6),
	('Nicole','Osorio','2006-09-24',0,8500.45,'Secretaria',GETDATE(),NULL),
	('Fernando','Alonso','2002-04-26',1,7500.23,'Ejecutivo de ventas',GETDATE(),NULL),
	('Sofia','Orantes','2002-05-12',0,5500.68,'Marketing',GETDATE(),1);

INSERT INTO [dbo].[employees] ([employee_name],[employee_surname],[employee_birthday],
[employee_gender], [employee_salary], [position_name], [created], [departament_id])
VALUES ('Juan','Sequeda','2000-01-16',0, 3600.00,'Operador de Maquinaria', GETDATE(), 1);

UPDATE [dbo].[employees]
SET departament_id = 3
WHERE [employee_name] = 'Juan' AND [employee_surname] = 'Sequeda';

SELECT *FROM [dbo].[departaments];

INSERT INTO [dbo].[employees] ([employee_name],[employee_surname],[employee_birthday],
[employee_gender], [employee_salary], [position_name], [created], [departament_id])
VALUES ('Katrina','Molina','1998-04-23',1, 7600.00,'Ejecutivo de Ventas', GETDATE(), 4);

INSERT INTO [dbo].[employees] ([employee_name],[employee_surname],[employee_birthday],
[employee_gender], [employee_salary], [position_name], [created], [departament_id])
VALUES ('Bernardo','Ambrosio','2002-08-17',0, 5900.00,'Gerente de RRHH', GETDATE(), 2);

INSERT INTO [dbo].[employees] ([employee_name],[employee_surname],[employee_birthday],
[employee_gender], [employee_salary], [position_name], [created], [departament_id])
VALUES ('Ramiro','Gonzales','1979-10-14',0,10000.00,'Operador de Montacargas',GETDATE(), 6),
		('Amy','Villavicencio','2003-02-03',1,4500.00,'Encargado de Tienda',GETDATE(), 5),
		('Andrid','De la Roca','2000-06-17',1,8700.00,'Encargado de Tienda',GETDATE(), 6);
		
INSERT INTO [dbo].[employees] ([employee_name],[employee_surname],[employee_birthday],
[employee_gender], [employee_salary], [position_name], [created], [departament_id])
VALUES ('Barbara','Camila','2002-09-27',1, 1900.00,'Clasificador de Ropa', GETDATE(), 6);


INSERT INTO [dbo].[employees] ([employee_name],[employee_surname],[employee_birthday],
[employee_gender], [employee_salary], [position_name], [created], [departament_id])
VALUES ('Fred','Sepulveda','1980-08-10',0, 4000.00,'Programador Jr.', GETDATE(), 1);

INSERT INTO [dbo].[employees] ([employee_name],[employee_surname],[employee_birthday],
[employee_gender], [employee_salary], [position_name], [created], [departament_id])
VALUES ('Manuel','Aguirre','1992-11-29',0, 9000.00,'Programador Md.', GETDATE(), 1);

INSERT INTO [dbo].[employees] ([employee_name],[employee_surname],[employee_birthday],
[employee_gender], [employee_salary], [position_name], [created], [departament_id])
VALUES ('Alexa','Marroquin','2002-04-12',1, 8000.00,'Diseño Grafico.', GETDATE(), 1);