USE company;

SELECT *FROM [dbo].[employees];

INSERT INTO [dbo].[employees] ([employee_name],[departament_id]) 
VALUES ('Axel Romario', 1),
	('Daniel Noriega', 1),
	('Melany Salazar',2),
	('Cindy Chajon',3),
	('Aroldo Juarez',4),
	('Monica Galindo',NULL),
	('Alondra Rosas', 2),
	('Aylin Santos',6),
	('Nicole Osorio',NULL),
	('Fernando Alonso',NULL),
	('Sofia Orantes',1)