SELECT CustomerID
	, AVG(Amount) AS [AvgAmount]
FROM PurchaseOrder
WHERE TransactionDate BETWEEN '2019-01-01' AND '2019-12-31'
GROUP BY CustomerID