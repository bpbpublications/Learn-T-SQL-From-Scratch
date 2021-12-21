DECLARE @XMLData XML;
SET @XMLData = '<?xml version="1.0"?>
				<Products>
					<Product>
						<ProductID>1</ProductID>
						<ProductName>Product 1</ProductName>
					</Product>
					<Product>
						<ProductID>2</ProductID>
						<ProductName>Product 2</ProductName>
					</Product>
					<Product>
						<ProductID>3</ProductID>
						<ProductName>Product 3</ProductName>
					</Product>
					<Product>
						<ProductID>4</ProductID>
						<ProductName>Product 4</ProductName>
					</Product>
					<Product>
						<ProductID>5</ProductID>
						<ProductName>Product 5</ProductName>
					</Product>
				</Products>';

SELECT X.Y.value('(ProductID)[1]', 'INT') AS ProductID
	, X.Y.value('(ProductName)[1]', 'VARCHAR(50)') AS ProductName
FROM @XMLData.nodes('Products/Product') AS X(Y);