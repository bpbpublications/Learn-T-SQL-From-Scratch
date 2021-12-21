CREATE TABLE PurchaseOrder
(
	OrderID				INT NOT NULL
	, TransactionDate	DATE NOT NULL
	, CustomerID		INT NOT NULL
	, ProductID			INT NOT NULL
	, Quantity			INT NOT NULL
	, Rate				NUMERIC(18,2) NOT NULL
	, Amount			NUMERIC(18,2) NOT NULL
	, CONSTRAINT PK_PurchaseOrder_OrderID PRIMARY KEY (OrderID)
	, CONSTRAINT FK_PurchaseOrder_CustomerID FOREIGN KEY (CustomerID) REFERENCES Customer (CustomerID)
	, CONSTRAINT FK_PurchaseOrder_ProductID FOREIGN KEY (ProductID) REFERENCES Product (ProductID)
)