SELECT COUNT(*) AS [NumberOfOrders]
	, COUNT(DISTINCT CustomerID) AS [NumberOfCustomers]
FROM PurchaseOrder
WHERE TransactionDate BETWEEN '2019-01-01' AND '2019-12-31'

SELECT CustomerID
	, COUNT(*) AS [NumberOfOrders]
FROM PurchaseOrder
GROUP BY CustomerID