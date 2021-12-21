/****************************************************************************************************************************************/
/************************************* Assigning values to the variables using SET command **********************************************/
/****************************************************************************************************************************************/
/* Declaring the variables */
DECLARE @A		INT
DECLARE @B		INT
DECLARE @C		INT
DECLARE @D		VARCHAR(50)

/* Assigning values to the variables using SET command */
SET @A = 1
SET @B = 2
SET @C = @A + @B
SET @D = 'Test'

/* Reading values from the variables as a table using SELECT command */
SELECT @A AS [A]
	, @B AS [B]
	, @C AS [C]
	, @D AS [D]

/* Reading individual values from the variables using SELECT command */
SELECT @A AS [A] 
SELECT @B AS [B] 
SELECT @C AS [C] 
SELECT @D AS [D]

SELECT @A 
SELECT @B 
SELECT @C 
SELECT @D

/* Reading values from the variables using PRINT command */
PRINT @A
PRINT @B
PRINT @C
PRINT @D

/****************************************************************************************************************************************/


/****************************************************************************************************************************************/
/************************************* Assigning values to the variables using SELECT command *******************************************/
/****************************************************************************************************************************************/
/* Declaring the variables */
DECLARE @CustomerName		VARCHAR(50)
DECLARE @Amount				MONEY

/* Assigning values to the variables using SELECT command */
SELECT @CustomerName = CustomerName FROM Customer WHERE CustomerID = 1
SELECT @Amount = Quantity * Rate FROM PurchaseOrder WHERE CustomerID = 1

/* Reading values from the variables as a table using SELECT command */
SELECT @CustomerName	AS [CustomerName] 
	, @Amount			AS [Amount]

/* Reading individual values from the variables using SELECT command */
SELECT @CustomerName AS [CustomerName] 
SELECT @Amount AS [Amount]

SELECT @CustomerName
SELECT @Amount

/* Reading values from the variables using PRINT command */
PRINT @CustomerName
PRINT @Amount

/****************************************************************************************************************************************/

/****************************************************************************************************************************************/
/********************************************************* Table Variable ***************************************************************/
/**************** All the DML operations (INSERT, UPDATE, DELETE and SELECT) can be performed on the Table Variables ********************/
/****************************************************************************************************************************************/
/* Declaring a table variable */
DECLARE @MyTable TABLE
(
	Col1		INT
	, Col2		VARCHAR(50)
	, Col3		DATE
)

/* Assigning values to the table variable */
INSERT INTO @MyTable (Col1, Col2, Col3)
VALUES (1, 'Test', '2020-12-31')

/* Reading values from a table variable */
SELECT * FROM @MyTable