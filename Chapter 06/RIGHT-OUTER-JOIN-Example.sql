SELECT C.*
	, P.*
FROM Customer C
	RIGHT JOIN PurchaseOrder P
		ON C.CustomerID = P.CustomerID

SELECT C.*
	, P.*
FROM PurchaseOrder P
	RIGHT JOIN Customer C
		ON C.CustomerID = P.CustomerID

SELECT C.*
	, P.*
FROM PurchaseOrder P
	RIGHT JOIN Customer C
		ON C.CustomerID = P.CustomerID
WHERE P.OrderID IS NULL