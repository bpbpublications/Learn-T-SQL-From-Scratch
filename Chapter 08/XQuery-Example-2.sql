DECLARE @XMLData XML;
SET @XMLData = '<?xml version="1.0"?>
				<Products>
					<Product ProductID="1" ProductName="Product 1" />
					<Product ProductID="2" ProductName="Product 2" />
					<Product ProductID="3" ProductName="Product 3" />
					<Product ProductID="4" ProductName="Product 4" />
					<Product ProductID="5" ProductName="Product 5" />
				</Products>';

SELECT X.Y.value('(@ProductID)[1]', 'INT') AS ProductID
	, X.Y.value('(@ProductName)[1]', 'VARCHAR(50)') AS ProductName
FROM @XMLData.nodes('Products/Product') AS X(Y);