DECLARE @MyTable TABLE
(
	Branch		VARCHAR(50)
	, Products	XML
);

INSERT INTO @MyTable
(
	Branch
	, Products
)
VALUES
(
	'London'
	,	'<?xml version="1.0"?>
		<Products>
			<Product ProductID="1" ProductName="Product 1" />
			<Product ProductID="2" ProductName="Product 2" />
			<Product ProductID="3" ProductName="Product 3" />
			<Product ProductID="4" ProductName="Product 4" />
			<Product ProductID="5" ProductName="Product 5" />
		</Products>'
),
(
	'Mumbai'
	,	'<?xml version="1.0"?>
		<Products>
			<Product ProductID="1" ProductName="Product 1" />
			<Product ProductID="2" ProductName="Product 2" />
			<Product ProductID="5" ProductName="Product 5" />
		</Products>'
);

SELECT T.Branch
	, X.Y.value('(@ProductID)[1]', 'INT') AS ProductID
	, X.Y.value('(@ProductName)[1]', 'VARCHAR(50)') AS ProductName
FROM @MyTable T
	CROSS APPLY T.Products.nodes('Products/Product') AS X(Y)
WHERE T.Branch = 'Mumbai'
	AND X.Y.value('(@ProductID)[1]', 'INT') = 1;