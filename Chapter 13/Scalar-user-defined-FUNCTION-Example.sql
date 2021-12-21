/* Creating a scalar user-defined function */
CREATE FUNCTION [dbo].[ufn_Get_CustomerName_By_CustomerID]
(
	@CustomerID INT
)
RETURNS VARCHAR(50)
AS
	BEGIN
		DECLARE @CustomerName VARCHAR(50);

		SELECT @CustomerName = [CustomerName]
		FROM Customer
		WHERE [CustomerID] = @CustomerID;

		RETURN @CustomerName;
	END


/* Executing a scalar user-defined function */
SELECT [dbo].[ufn_Get_CustomerName_By_CustomerID] (1)


/* Modifying a scalar user-defined function */
ALTER FUNCTION [dbo].[ufn_Get_CustomerName_By_CustomerID]
(
	@CustomerID INT
)
RETURNS VARCHAR(50)
AS
	BEGIN
		DECLARE @CustomerName VARCHAR(50);

		SELECT @CustomerName = [CustomerName]
		FROM Customer
		WHERE [CustomerID] = @CustomerID;

		RETURN @CustomerName;
	END


/* Dropping a scalar user-defined function */
DROP FUNCTION [dbo].[ufn_Get_CustomerName_By_CustomerID]