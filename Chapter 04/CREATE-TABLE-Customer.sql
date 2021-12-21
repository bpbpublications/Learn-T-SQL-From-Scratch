CREATE TABLE Customer
(
	CustomerID			INT NOT NULL
	, CustomerName		VARCHAR(50) NOT NULL
	, CustomerAddress	VARCHAR(100) NOT NULL
	, CustomerMobile	VARCHAR(20) NOT NULL
	, CONSTRAINT PK_Customer_CustomerID PRIMARY KEY (CustomerID)
)