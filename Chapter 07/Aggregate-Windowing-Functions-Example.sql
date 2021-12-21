SELECT OrderID
	, CustomerID
	, Amount
	, SUM(Amount) OVER(PARTITION BY CustomerID ORDER BY OrderID ASC) AS [SUM]
	, COUNT(Amount) OVER(PARTITION BY CustomerID ORDER BY OrderID ASC) AS [COUNT]
	, AVG(Amount) OVER(PARTITION BY CustomerID ORDER BY OrderID ASC) AS [AVG]
	, MIN(Amount) OVER(PARTITION BY CustomerID ORDER BY OrderID ASC) AS [MIN]
	, MAX(Amount) OVER(PARTITION BY CustomerID ORDER BY OrderID ASC) AS [MAX]
FROM PurchaseOrder
WHERE OrderID <= 5