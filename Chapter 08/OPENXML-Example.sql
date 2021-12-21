DECLARE @idoc INT, @doc VARCHAR(1000);

SET @doc = '<?xml version="1.0"?>
			<Products>
				<Product ProductID="1" ProductName="Product 1" />
				<Product ProductID="2" ProductName="Product 2" />
				<Product ProductID="3" ProductName="Product 3" />
				<Product ProductID="4" ProductName="Product 4" />
				<Product ProductID="5" ProductName="Product 5" />
			</Products>';

EXEC sp_xml_preparedocument @idoc OUTPUT, @doc;

SELECT *
FROM OPENXML (@idoc, '/Products/Product', 0)
WITH
(
	ProductID INT
	, ProductName VARCHAR(50)
);

EXEC sp_xml_removedocument @idoc;