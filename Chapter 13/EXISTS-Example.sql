-- Count of customers with CustomerID less than 100. 20 such customers exist.
SELECT COUNT(1) FROM Customer WHERE CustomerID < 100;

-- Count of customers with CustomerID greater than 100. No such customer exists.
SELECT COUNT(1) FROM Customer WHERE CustomerID > 100;

IF EXISTS (SELECT 1 FROM Customer WHERE CustomerID = 101)
	BEGIN
		SELECT 'CustomerID found.';
	END;
ELSE
	BEGIN
		SELECT 'CustomerID not found.';
	END;

SELECT COUNT(1) FROM Customer
WHERE EXISTS (SELECT 1 FROM Customer WHERE CustomerID = 101);