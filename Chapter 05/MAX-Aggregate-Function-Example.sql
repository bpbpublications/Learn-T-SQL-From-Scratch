SELECT CustomerID
	, MAX(Amount) AS [MaxAmount]
FROM PurchaseOrder
WHERE TransactionDate BETWEEN '2019-01-01' AND '2019-12-31'
GROUP BY CustomerID