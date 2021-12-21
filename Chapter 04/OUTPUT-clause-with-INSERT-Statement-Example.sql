INSERT INTO Customer (CustomerID, CustomerName, CustomerAddress, CustomerMobile)
OUTPUT inserted.*
VALUES (1, 'John', 'Paris', '1111111111')
	, (2, 'Kiya', 'London', '2222222222')
	, (3, 'Reema', 'India', '3333333333')

INSERT INTO Customer (CustomerID, CustomerName, CustomerAddress, CustomerMobile)
OUTPUT inserted.CustomerID, inserted.CustomerName
VALUES (1, 'John', 'Paris', '1111111111')
	, (2, 'Kiya', 'London', '2222222222')
	, (3, 'Reema', 'India', '3333333333')