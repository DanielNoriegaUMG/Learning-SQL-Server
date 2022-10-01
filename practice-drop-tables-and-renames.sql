CREATE TABLE test(
	id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	descripcion VARCHAR(100) NOT NULL
);

-- Renombrar tabla 'old name', 'new name'
EXEC sp_rename 'test','example';

-- Agregar una columna a la tabla
ALTER TABLE [dbo].[example]
ADD [Status] INT NOT NULL;

-- Eliminar la columna de la tabla
ALTER TABLE [dbo].[example]
DROP COLUMN [Status];