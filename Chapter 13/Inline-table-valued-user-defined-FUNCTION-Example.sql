/* Creating an inline table-valued user-defined function */
CREATE FUNCTION [dbo].[ufn_IL_Get_Customer_By_CustomerID]
(
	@CustomerID INT
)
RETURNS TABLE
AS
	RETURN
	(
		SELECT [CustomerID]
		, [CustomerName]
		, [CustomerAddress]
		, [CustomerMobile]
		FROM Customer
		WHERE [CustomerID] = @CustomerID
	);


/* Executing an inline table-valued user-defined function */
SELECT * FROM [dbo].[ufn_IL_Get_Customer_By_CustomerID] (1)


/* Modifying an inline table-valued user-defined function */
ALTER FUNCTION [dbo].[ufn_IL_Get_Customer_By_CustomerID]
(
	@CustomerID INT
)
RETURNS TABLE
AS
	RETURN
	(
		SELECT [CustomerID]
		, [CustomerName]
		, [CustomerAddress]
		, [CustomerMobile]
		FROM Customer
		WHERE [CustomerID] = @CustomerID
	);


/* Dropping an inline table-valued user-defined function */
DROP FUNCTION [dbo].[ufn_IL_Get_Customer_By_CustomerID]