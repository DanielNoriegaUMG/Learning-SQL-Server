USE inventario;

CREATE TABLE [dbo].[orders](
	order_id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	order_number INT NOT NULL,
	order_date DATETIME NOT NULL,
	order_status INT NOT NULL
);

CREATE TABLE [dbo].[products](
	product_id INT NOT NULL	IDENTITY(1,1) PRIMARY KEY,
	product_code VARCHAR(10) NOT NULL UNIQUE,
	product_description	VARCHAR(100) NOT NULL
);

CREATE TABLE [dbo].[orderDetails](
	orderDetail_id	INT	NOT NULL IDENTITY(1,1) PRIMARY KEY,
	order_id INT NOT NULL,
	orderDetail_number INT NOT NULL,
	product_id INT NOT NULL,
	orderDetail_quantity DECIMAL(18,2) NOT NULL,
	orderDetail_price DECIMAL(18,2)	NOT NULL ,
	measure_id INT NOT NULL,
	notes VARCHAR(MAX) NULL,
	CONSTRAINT orderDetails_orders_fk FOREIGN KEY (order_id) REFERENCES orders (order_id),
	CONSTRAINT orderDetails_products_fk FOREIGN KEY (product_id) REFERENCES products (product_id),
	CONSTRAINT orderDetails_measures_fk FOREIGN KEY (measure_id) REFERENCES measures (measure_id)
);