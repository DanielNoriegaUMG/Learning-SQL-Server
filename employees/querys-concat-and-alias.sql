USE company;

SELECT *FROM [dbo].[employees];

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