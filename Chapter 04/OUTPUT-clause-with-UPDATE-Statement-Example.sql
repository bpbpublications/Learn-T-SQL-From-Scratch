UPDATE Customer
SET CustomerName = 'Jim'
OUTPUT deleted.*, inserted.*
WHERE CustomerID = 1