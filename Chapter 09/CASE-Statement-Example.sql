/* CASE statement - Example 1 */
DECLARE @Item_Example1 VARCHAR(50);
SET @Item_Example1 = 'Banana Milkshake';
SET @Item_Example1 =	CASE
							WHEN @Item_Example1 = 'Banana Milkshake'
								THEN 'Milkshake'
							WHEN @Item_Example1 = 'Apple Juice'
								THEN 'Juice'
							ELSE @Item_Example1
						END;

SELECT @Item_Example1;

/* CASE statement - Example 2 */
DECLARE @Item_Example2 VARCHAR(50);
DECLARE @Price_Example2 MONEY;
DECLARE @Quantity_Example2 INT;

SET @Item_Example2 = 'Banana Milkshake';
SET @Price_Example2 = 10;
SET @Quantity_Example2 = 2;

SELECT @Quantity_Example2 *	CASE
								WHEN @Item_Example2 = 'Banana Milkshake'
									THEN (@Price_Example2 - (@Price_Example2 * 50 / 100))
								ELSE @Price_Example2
							END;

/* CASE statement - Example 3 */
DECLARE @Item_Example3 VARCHAR(50);
DECLARE @Price_Example3 MONEY;
DECLARE @Quantity_Example3 INT;

DECLARE @MyTable_Example3 TABLE
(
	Item		VARCHAR(50)
	, Price		MONEY
	, Discount	INT
	, Quantity	INT
	, Amount	MONEY
);

SET @Item_Example3 = 'Banana Milkshake';
SET @Price_Example3 = 10;
SET @Quantity_Example3 = 2;

INSERT INTO @MyTable_Example3 (Item, Price, Discount, Quantity, Amount)
VALUES
(
	@Item_Example3
	, @Price_Example3
	,	CASE
			WHEN @Item_Example3 = 'Banana Milkshake'
				THEN 50
			ELSE 0
		END
	, @Quantity_Example3
	, @Quantity_Example3 * (@Price_Example3 - (@Price_Example3 * (	CASE
																		WHEN @Item_Example3 = 'Banana Milkshake'
																			THEN 50
																		ELSE 0
																	END) / 100)));
SELECT * FROM @MyTable_Example3;

/* CASE statement - Example 4 */
DECLARE @Item_Example4 VARCHAR(50);
DECLARE @Price_Example4 MONEY;
DECLARE @Quantity_Example4 INT;

DECLARE @MyTable_Example4 TABLE
(
	Item		VARCHAR(50)
	, Price		MONEY
	, Discount	INT
	, Quantity	INT
	, Amount	MONEY
);

SET @Item_Example4 = 'Banana Milkshake';
SET @Price_Example4 = 10;
SET @Quantity_Example4 = 2;

INSERT INTO @MyTable_Example4 (Item, Price, Discount, Quantity, Amount)
SELECT @Item_Example4	AS [Item]
	, @Price_Example4	AS [Price]
	,	CASE
			WHEN @Item_Example4 = 'Banana Milkshake'
				THEN 50
			ELSE 0
		END AS [Discount]
	, @Quantity_Example4 AS [Quantity]
	, @Quantity_Example4 * (@Price_Example4 - (@Price_Example4 * (	CASE
																		WHEN @Item_Example4 = 'Banana Milkshake'
																			THEN 50
																		ELSE 0
																	END) / 100)) AS [Amount];
SELECT * FROM @MyTable_Example4;