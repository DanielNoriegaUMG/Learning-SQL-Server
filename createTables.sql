USE inventario;

CREATE TABLE [dbo].[Orders](
	order_id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	order_number INT NOT NULL,
	order_date DATETIME NOT NULL,
	order_status INT NOT NULL
);

CREATE TABLE [dbo].[products](
	product_id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	product_code VARCHAR(10) NOT NULL UNIQUE,
	product_description VARCHAR(100) NOT NULL
)