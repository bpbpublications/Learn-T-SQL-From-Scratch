/* Creating a multiline table-valued function */
CREATE FUNCTION [dbo].[ufn_ML_Get_Customer_By_CustomerID]
(
	@CustomerID INT
)
RETURNS @Customer TABLE
(
	[CustomerID] INT
	, [CustomerName] VARCHAR(50)
	, [CustomerAddress] VARCHAR(100)
	, [CustomerMobile] VARCHAR(20)
)
AS
	BEGIN
		INSERT INTO @Customer
		(
			[CustomerID]
			, [CustomerName]
			, [CustomerAddress]
			, [CustomerMobile]
		)
		SELECT [CustomerID]
			, [CustomerName]
			, [CustomerAddress]
			, [CustomerMobile]
		FROM Customer
		WHERE [CustomerID] = @CustomerID

		RETURN;
	END

/* Executing a multiline table-valued function */
SELECT * FROM [dbo].[ufn_ML_Get_Customer_By_CustomerID] (1)


/* Modifying a multiline table-valued function */
ALTER FUNCTION [dbo].[ufn_ML_Get_Customer_By_CustomerID]
(
	@CustomerID INT
)
RETURNS @Customer TABLE
(
	[CustomerID] INT
	, [CustomerName] VARCHAR(50)
	, [CustomerAddress] VARCHAR(100)
	, [CustomerMobile] VARCHAR(20)
)
AS
	BEGIN
		INSERT INTO @Customer
		(
			[CustomerID]
			, [CustomerName]
			, [CustomerAddress]
			, [CustomerMobile]
		)
		SELECT [CustomerID]
			, [CustomerName]
			, [CustomerAddress]
			, [CustomerMobile]
		FROM Customer
		WHERE [CustomerID] = @CustomerID

		RETURN;
	END


/* Dropping a multiline table-valued function */
DROP FUNCTION [dbo].[ufn_ML_Get_Customer_By_CustomerID]