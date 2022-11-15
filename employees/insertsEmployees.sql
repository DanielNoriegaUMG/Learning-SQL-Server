USE company;
SELECT *FROM [dbo].[employees];

-- Reiniciar ID
TRUNCATE TABLE [dbo].[employees];
DBCC CHECKIDENT(employees,RESEED,1);

INSERT INTO [dbo].[employees] ([employee_name],[employee_birthday],[employee_gender],
[employee_salary],[position_name], [created], [departament_id])
VALUES ('Axel Romario','1980-08-22',0,6500.00,'Generalista',GETDATE(), 1),
	('Melany Salazar','2002-04-26',1,9500,'Supervisora',GETDATE(),2),
	('Cindy Chajon','1980-08-13',1,9000,'CTO',GETDATE(),3),
	('Aroldo Juarez','1992-01-28',0,3500,'Jefe de bodega',GETDATE(),4),
	('Monica Galindo','2001-09-15',0,4000,'Secretaria',GETDATE(),NULL),
	('Alondra Rosas','1999-12-20',0,3200,'Empacadora',GETDATE(),2),
	('Aylin Santos','2001-10-12',0,9500,'Supervisora',GETDATE(),6),
	('Nicole Osorio','2006-09-24',0,8500,'Secretaria',GETDATE(),NULL),
	('Fernando Alonso','2002-04-26',1,7500,'Ejecutivo de ventas',GETDATE(),NULL),
	('Sofia Orantes','2002-05-12',0,5500,'Marketing',GETDATE(),1);