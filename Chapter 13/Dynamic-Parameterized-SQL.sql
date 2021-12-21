DECLARE @ProductID INT
	, @CustomerID INT;

SELECT @ProductID = 1
	, @CustomerID = 1;

DECLARE @SQL NVARCHAR(MAX)
	, @SQLParameters NVARCHAR(MAX)

SET @SQL = N'SELECT *
			FROM PurchaseOrder
			WHERE ProductID = @ProductID
				AND CustomerID = @CustomerID;'

SET @SQLParameters = N'@ProductID INT, @CustomerID INT'

EXEC sp_executesql
	@SQL
	, @SQLParameters
	, @ProductID
	, @CustomerID;