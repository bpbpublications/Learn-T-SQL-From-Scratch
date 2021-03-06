INSERT INTO Customer (CustomerID, CustomerName, CustomerAddress, CustomerMobile)
VALUES (1, 'Customer 1', 'Customer 1 Address', '1111111111')
	, (2, 'Customer 2', 'Customer 2 Address', '2222222222')
	, (3, 'Customer 3', 'Customer 3 Address', '3333333333')
	, (4, 'Customer 4', 'Customer 4 Address', '4444444444')
	, (5, 'Customer 5', 'Customer 5 Address', '5555555555')
	, (6, 'Customer 6', 'Customer 6 Address', '6666666666')
	, (7, 'Customer 7', 'Customer 7 Address', '7777777777')
	, (8, 'Customer 8', 'Customer 8 Address', '8888888888')
	, (9, 'Customer 9', 'Customer 9 Address', '9999999999')
	, (10, 'Customer 10', 'Customer 9 Address', '1010101010')
	, (11, 'Customer 11', 'Customer 11 Address', '1111111111')
	, (12, 'Customer 12', 'Customer 12 Address', '1212121212')
	, (13, 'Customer 13', 'Customer 13 Address', '1313131313')
	, (14, 'Customer 14', 'Customer 14 Address', '1414141414')
	, (15, 'Customer 15', 'Customer 15 Address', '1515151515')

INSERT INTO Product (ProductID, ProductName)
VALUES (1, 'Product 1')
	, (2, 'Product 2')
	, (3, 'Product 3')
	, (4, 'Product 4')
	, (5, 'Product 5')

INSERT INTO PurchaseOrder (OrderID, TransactionDate, CustomerID, ProductID, Quantity, Rate, Amount)
VALUES (1, '2019-01-01', 1, 1, 1, 150000, 150000)
	, (2, '2019-05-15', 1, 2, 1, 250000, 250000)
	, (3, '2019-08-20', 1, 3, 2, 150000, 300000)
	, (4, '2019-10-20', 1, 4, 1, 350000, 350000)
	, (5, '2019-12-20', 1, 5, 3, 100000, 300000)
	, (6, '2019-01-01', 2, 1, 1, 150000, 150000)
	, (7, '2019-08-15', 2, 2, 1, 250000, 250000)
	, (8, '2019-12-20', 3, 3, 2, 150000, 300000)
	, (9, '2020-02-20', 3, 4, 1, 350000, 350000)
	, (10, '2020-03-20', 3, 5, 3, 100000, 300000)
	, (11, '2019-01-20', 4, 5, 3, 100000, 300000)
	, (12, '2019-05-01', 5, 1, 1, 150000, 150000)
	, (13, '2019-10-15', 5, 2, 1, 250000, 250000)
	, (14, '2019-04-20', 6, 3, 2, 150000, 300000)
	, (15, '2020-01-20', 7, 4, 1, 350000, 350000)
	, (16, '2020-02-20', 7, 5, 3, 100000, 300000)
	, (17, '2020-03-20', 8, 1, 3, 100000, 300000)
	, (18, '2019-01-20', 8, 3, 3, 100000, 300000)
	, (19, '2019-05-01', 8, 5, 1, 150000, 150000)
	, (20, '2019-10-15', 9, 2, 1, 250000, 250000)
	, (21, '2019-04-20', 10, 2, 2, 150000, 300000)
	, (22, '2020-01-20', 11, 4, 1, 350000, 350000)
	, (23, '2020-02-20', 12, 5, 3, 100000, 300000)
	, (24, '2019-01-01', 13, 1, 1, 150000, 150000)
	, (25, '2019-05-15', 13, 2, 1, 250000, 250000)
	, (26, '2019-08-20', 13, 3, 2, 150000, 300000)
	, (27, '2019-10-20', 14, 4, 1, 350000, 350000)
	, (28, '2019-12-20', 14, 5, 3, 100000, 300000)
	, (29, '2019-01-10', 15, 1, 1, 160000, 160000)
	, (30, '2019-05-25', 15, 2, 1, 200000, 200000)
	, (31, '2019-08-22', 15, 3, 2, 150000, 300000)
	, (32, '2020-01-13', 15, 4, 1, 350000, 350000)
	, (33, '2020-03-25', 15, 5, 3, 100000, 300000)