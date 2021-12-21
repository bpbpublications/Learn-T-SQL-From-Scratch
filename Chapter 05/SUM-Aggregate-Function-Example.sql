SELECT SUM(Amount)
FROM PurchaseOrder
WHERE TransactionDate BETWEEN '2019-04-01' AND '2019-06-30'

SELECT SUM(Amount) AS [TotalAmount]
FROM PurchaseOrder
WHERE TransactionDate BETWEEN '2019-04-01' AND '2019-06-30'

SELECT CustomerID
	, SUM(Amount) AS [TotalAmount]
FROM PurchaseOrder
WHERE TransactionDate BETWEEN '2019-04-01' AND '2019-06-30'
GROUP BY CustomerID

SELECT TOP 5 CustomerID
	, ProductID
	, SUM(Amount) AS [TotalAmount]
FROM PurchaseOrder
WHERE TransactionDate BETWEEN '2019-01-01' AND '2019-12-31'
GROUP BY CustomerID
	, ProductID
HAVING SUM(Amount) > 100000
ORDER BY [TotalAmount] DESC

SELECT TOP 5 CustomerID
	, ProductID
	, SUM(Amount) AS [TotalAmount]
FROM PurchaseOrder
WHERE TransactionDate BETWEEN '2019-01-01' AND '2019-12-31'
GROUP BY CustomerID
	, ProductID
HAVING SUM(Amount) > 100000
ORDER BY 3 DESC