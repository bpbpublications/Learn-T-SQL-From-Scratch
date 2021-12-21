INSERT INTO PurchaseOrderYearlySummary
(
	TransactionDate
	, CustomerID
	, Quantity
	, Rate
	, Amount
)
SELECT CAST(YEAR(TransactionDate) AS VARCHAR(4)) + '-12-31' AS TransactionDate
	, CustomerID
	, SUM(Quantity) AS Quantity
	, AVG(Rate) AS Rate
	, SUM(Amount) AS Amount
FROM PurchaseOrder
GROUP BY YEAR(TransactionDate), CustomerID
ORDER BY YEAR(TransactionDate) ASC, CustomerID ASC