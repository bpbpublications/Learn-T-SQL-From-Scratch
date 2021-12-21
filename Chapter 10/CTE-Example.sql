/* Sample CTE */
; WITH cte_test1
AS
(
	SELECT 1 AS ID, 'Test 1' AS Name
)
, cte_test2
AS
(
	SELECT 2 AS ID, 'Test 2' AS Name
)

SELECT ID, Name FROM cte_test1
UNION
SELECT ID, Name FROM cte_test2

/* CTE - Example 1*/
; WITH cte_Product
(
	[ProductID]
	, [ProductName]
	, [First_ProductID]
)
AS
(
	SELECT [ProductID]
		, [ProductName]
		, ROW_NUMBER() OVER(ORDER BY ProductID ASC) AS [First_ProductID]
	FROM Product
)

SELECT [ProductID]
	, [ProductName]
FROM cte_Product
WHERE [First_ProductID] = 1

/* CTE - Example 2*/
; WITH cte_Product
AS
(
	SELECT [ProductID]
		, [ProductName]
		, ROW_NUMBER() OVER(ORDER BY ProductID ASC) AS [First_ProductID]
	FROM Product
)

SELECT [ProductID]
	, [ProductName]
FROM cte_Product
WHERE [First_ProductID] = 1