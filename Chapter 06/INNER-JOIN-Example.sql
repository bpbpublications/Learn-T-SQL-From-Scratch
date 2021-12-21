SELECT C.*
	, P.*
FROM PurchaseOrder P
	INNER JOIN Customer C
		ON C.CustomerID = P.CustomerID