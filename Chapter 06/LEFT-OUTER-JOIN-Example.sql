SELECT C.*
	, P.*
FROM Customer C
	LEFT JOIN PurchaseOrder P
		ON C.CustomerID = P.CustomerID

SELECT C.*
	, P.*
FROM Customer C
	LEFT JOIN PurchaseOrder P
		ON C.CustomerID = P.CustomerID
WHERE P.OrderID IS NULL