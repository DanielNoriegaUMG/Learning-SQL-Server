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

--CHARINDEX(valorBuscado,cadenaDondeBuscar,posicionIniciar)
--NOTA: posicionIniciar es opcional
SELECT CHARINDEX('@','danielenoriega@yahoo.com',3); --ver la posicion donde se encuentra la @

SELECT CHARINDEX('e',[employee_name]) AS 'POSICION LETRA' FROM [dbo].[employees]; -- seleccionar donde se encuentra la letra "e"


--FUNCTION STUFF
--STUFF(valorBuscado,inicio,fin,palabraEditar)
SELECT STUFF('d.noriegachajon@gmail.com',1,CHARINDEX('@','d.noriegachajon@gmail.com'),'confidencial');

SELECT STUFF([mail],1,CHARINDEX('@',[mail])-1, 'confidencial') FROM [dbo].[mails];

--FUNCTION LOWER
SELECT LOWER('DANIEL NORIEGA');
SELECT LOWER([employee_name]) FROM [dbo].[employees];
SELECT LOWER([employee_surname]) FROM [dbo].[employees];
SELECT LOWER(CONCAT([employee_name],' ',[employee_surname])) FROM [dbo].[employees];

--FUNCTION UPPER
SELECT UPPER('daniel noriega');
SELECT UPPER([employee_name]) FROM [dbo].[employees];
SELECT UPPER([employee_surname]) FROM [dbo].[employees];
SELECT UPPER(CONCAT([employee_name],' ',[employee_surname])) FROM [dbo].[employees];
SELECT UPPER([mail]) FROM [dbo].[mails] AS [m];


SELECT FORMAT([employee_id],'D5') FROM [dbo].[employees]; -- agregar 5 ceros al id

SELECT VALUE FROM string_split('MELANY,DANIEL,AROLDO,JUAN,AURELIO',','); --separar mediante las comas

SELECT VALUE FROM string_split('MELANY DANIEL AROLDO JUAN AURELIO',' '); --separar mendiante espacios

SELECT VALUE FROM string_split('MELANY-DANIEL-AROLDO-JUAN-AURELIO','-'); -- separar mediante guiones

SELECT compatibility_level FROM sys.databases WHERE name = 'company'; -- ver el nivel de compatibilidad