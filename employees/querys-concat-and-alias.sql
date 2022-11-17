USE company;

SELECT *FROM [dbo].[employees];
SELECT*FROM  [dbo].[departaments];

--function CONCAT
SELECT e.employee_id,
CONCAT(e.employee_name, ' ', e.employee_surname) AS 'employee_fullname',
e.employee_birthday AS 'birthday',
CASE 
	WHEN e.employee_gender = 0 THEN 'H'
	ELSE 'M'
END AS 'genero',
e.employee_salary
FROM [dbo].[employees] AS [e]
ORDER BY [e].[employee_salary] DESC;

--function CAST
SELECT e.employee_id,
CONCAT(e.employee_name, ' ', e.employee_surname) AS 'employee_fullname',
e.employee_birthday AS 'birthday',
CASE 
	WHEN e.employee_gender = 0 THEN 'H'
	ELSE 'M'
END AS 'genero',
e.employee_salary,
e.position_name + '/' + CAST(e.employee_salary AS nvarchar(100))
FROM [dbo].[employees] AS [e]
ORDER BY [e].[employee_salary] DESC;

--NOTA: para evitar usar CAST es mas recomendable la funcion CONCAT() porque hace solo el paso de numeros a varchar

SELECT e.employee_id,
CONCAT(e.employee_name, ' ', e.employee_surname) AS 'employee_fullname',
e.employee_birthday AS 'birthday',
CASE 
	WHEN e.employee_gender = 0 THEN 'H'
	ELSE 'M'
END AS 'genero',
e.employee_salary,
CONCAT(e.position_name,' / ',d.departament_name,' / ',e.employee_salary) AS 'Posicion / Depto / Salario'
FROM [dbo].[employees] AS [e]
INNER JOIN [dbo].[departaments] AS [d] ON e.departament_id = d.departament_id
ORDER BY [e].[employee_salary] DESC;