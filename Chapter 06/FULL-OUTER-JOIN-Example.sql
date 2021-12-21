SELECT C.*
	, P.*
FROM Customer C
	FULL JOIN PurchaseOrder P
		ON C.CustomerID = P.CustomerID