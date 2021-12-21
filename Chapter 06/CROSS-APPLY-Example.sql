SELECT C.CustomerName
	, COUNT(P.OrderID) AS NumberOfOrders
	, SUM(P.Amount) AS ValueOfOrders
FROM Customer C
	INNER JOIN PurchaseOrder P
		ON C.CustomerID = P.CustomerID
GROUP BY C.CustomerName
ORDER BY C.CustomerName ASC

SELECT C.CustomerName
	, P.NumberOfOrders
	, P.ValueOfOrders
FROM Customer C
	INNER JOIN
	(
		SELECT P.CustomerID
			, COUNT(P.OrderID) AS NumberOfOrders
			, SUM(P.Amount) AS ValueOfOrders
		FROM PurchaseOrder P
		GROUP BY P.CustomerID
	) P
	ON C.CustomerID = P.CustomerID
ORDER BY C.CustomerName ASC

SELECT C.CustomerName
	, P.NumberOfOrders
	, P.ValueOfOrders
FROM Customer C
	CROSS APPLY
	(
		SELECT P.CustomerID
			, COUNT(P.OrderID) AS NumberOfOrders
			, SUM(P.Amount) AS ValueOfOrders
		FROM PurchaseOrder P
		WHERE P.CustomerID = C.CustomerID
		GROUP BY P.CustomerID
	) P
ORDER BY C.CustomerName ASC