USE company;

-- LENGTH
--SUBSTRING(cadenaManipular,inicio,fin);
SELECT SUBSTRING('Daniel Noriega',1,6) AS "EXTRACCION DE CADENAS";

SELECT SUBSTRING([employee_name],1,3)FROM [dbo].[employees];
SELECT SUBSTRING([employee_surname],1,3)FROM [dbo].[employees];

SELECT 
	SUBSTRING(CONCAT([employee_name],' ',[employee_surname]),1,6)
FROM [dbo].[employees];