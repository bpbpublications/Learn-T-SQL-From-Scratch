SELECT C.CustomerName
	, P.NumberOfOrders
	, P.ValueOfOrders
	, (SELECT COUNT(Quantity) FROM PurchaseOrder WHERE CustomerID = C.CustomerID) AS QuantityOfOrders
	, (SELECT COUNT(Quantity) FROM PurchaseOrder) AS TotalQuantityOfOrders
FROM Customer C
	LEFT JOIN
	(
		SELECT P.CustomerID
			, COUNT(P.OrderID) AS NumberOfOrders
			, SUM(P.Amount) AS ValueOfOrders
		FROM PurchaseOrder P
		GROUP BY P.CustomerID
	) P
	ON C.CustomerID = P.CustomerID
WHERE C.CustomerID IN (SELECT CustomerID FROM Customer WHERE CustomerMobile = '1111111111')
ORDER BY C.CustomerName ASC