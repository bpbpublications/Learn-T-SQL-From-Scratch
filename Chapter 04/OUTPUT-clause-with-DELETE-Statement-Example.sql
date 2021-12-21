DELETE FROM Customer
OUTPUT deleted.*
WHERE CustomerID = 1;

DELETE Customer
OUTPUT deleted.*
WHERE CustomerID = 1;