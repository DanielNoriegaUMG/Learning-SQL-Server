-- Crear una base de datos
CREATE DATABASE inventario; 

-- Cambiar el nombre de la base de datos
ALTER DATABASE inventario MODIFY NAME = test;

-- Borrar la base de datos
DROP DATABASE test;

-- Cambiar el nombre de una tabla
sp_rename 'dbo.OrderDetails', 'orderDetails';