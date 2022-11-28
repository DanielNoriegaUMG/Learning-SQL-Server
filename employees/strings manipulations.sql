USE company;

-- LENGTH
--SUBSTRING(cadenaManipular,inicio,fin);
SELECT SUBSTRING('Daniel Noriega',1,6) AS "EXTRACCION DE CADENAS";

SELECT SUBSTRING([employee_name],1,3)FROM [dbo].[employees];
SELECT SUBSTRING([employee_surname],1,3)FROM [dbo].[employees];

SELECT 
	SUBSTRING(CONCAT([employee_name],' ',[employee_surname]),1,6)
FROM [dbo].[employees];

--SELECCIONAR DESDE LA DERECHA
SELECT RIGHT('DANIEL',2);
SELECT RIGHT([employee_birthday], 2) FROM [dbo].[employees]; -- seleccionar el dia de nacimiento

--SELECCIONAR DESDE LA IZQUIERDA
SELECT LEFT('DANIEL', 2);
SELECT LEFT([employee_birthday], 4) FROM [dbo].[employees]; -- seleccionar el año de 

--VER TAMAÑO DE LA CADENA
SELECT LEN([employee_name]) FROM [dbo].[employees];

-- ALTERATIONS
-- REPLACE(valor,valorBuscar,reemplazo)
SELECT REPLACE('JAVASCRIPT ES LO MEJOR','JAVASCRIPT','JAVA');
SELECT REPLACE([employee_name],'Daniel','ENRIQUE') FROM[dbo].[employees];

-- REPLICATE(valor,repetir n veces)
SELECT REPLICATE('DANIEL ', 3);
