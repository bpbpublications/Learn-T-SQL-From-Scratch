/* WHILE loop - Example 1*/
DECLARE @Number INT;
DECLARE @RunningTotal INT;
DECLARE @Formula VARCHAR(500);

DECLARE @MyTable TABLE
(
	[Number]			INT
	, [RunningTotal]	INT
	, [Formula]			VARCHAR(500)
);

SET @Number = 1;
SET @RunningTotal = 0;
SET @Formula = '';

WHILE (@Number <= 10)
	BEGIN
		SET @RunningTotal = @RunningTotal + @Number;
		SET @Formula = CAST(@Number AS VARCHAR) + '+' + @Formula

		INSERT INTO @MyTable
		(
			[Number]
			, [RunningTotal]
			, [Formula]
		)
		VALUES
		(
			@Number
			, @RunningTotal
			, LEFT(@Formula, LEN(@Formula) - 1)
		);

		SET @Number = @Number + 1;
	END

SELECT * FROM @MyTable;

/* WHILE loop - Example 2*/
DECLARE @CustomerID INT;
DECLARE @Start_CustomerID INT;
DECLARE @End_CustomerID INT;

DECLARE @Missing_Customer_IDs TABLE
(
	CustomerID INT
);

SELECT @Start_CustomerID = MIN(CustomerID)
	, @End_CustomerID = MAX(CustomerID)
FROM Customer;

SET @CustomerID = @Start_CustomerID;

WHILE (@CustomerID <= @End_CustomerID)
	BEGIN
		IF NOT EXISTS (SELECT 1 FROM Customer WHERE CustomerID = @CustomerID)
			BEGIN
				INSERT INTO @Missing_Customer_IDs (CustomerID) VALUES (@CustomerID);
			END;

		SET @CustomerID = @CustomerID + 1;
	END;

SELECT * FROM @Missing_Customer_IDs;