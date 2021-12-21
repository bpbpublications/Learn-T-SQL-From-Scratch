/* Creating a stored procedure */
CREATE PROCEDURE [dbo].[usp_Get_Customer_By_CustomerID]
(
	@CustomerID				INT
	, @NumberOfCustomers	TINYINT OUTPUT
)
AS
	BEGIN
		SET NOCOUNT ON;

		SELECT *
		FROM Customer
		WHERE [CustomerID] = @CustomerID;

		SET @NumberOfCustomers = @@ROWCOUNT;
	END


/* Executing a stored procedure */
DECLARE @NumberOfCustomers INT;
EXECUTE [dbo].[usp_Get_Customer_By_CustomerID]
	@CustomerID				= 1
	, @NumberOfCustomers	= @NumberOfCustomers OUTPUT;

SELECT @NumberOfCustomers;


/* Modifying a stored procedure */
ALTER PROCEDURE [dbo].[usp_Get_Customer_By_CustomerID]
(
	@CustomerID				INT
	, @NumberOfCustomers	TINYINT OUTPUT
)
AS
	BEGIN
		SET NOCOUNT ON;

		SELECT *
		FROM Customer
		WHERE [CustomerID] = @CustomerID;

		SET @NumberOfCustomers = @@ROWCOUNT;
	END


/* Dropping a stored procedure */
DROP PROCEDURE [dbo].[usp_Get_Customer_By_CustomerID]