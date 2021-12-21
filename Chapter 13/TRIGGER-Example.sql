/* Create the following tables */
CREATE TABLE Customer_Staging
(
	CustomerID		INT
	, CustomerName	VARCHAR(50)
	, DOB			DATE
)

CREATE TABLE Customer_Major
(
	CustomerID		INT
	, CustomerName	VARCHAR(50)
	, DOB			DATE
)

CREATE TABLE Customer_Minor
(
	CustomerID		INT
	, CustomerName	VARCHAR(50)
	, DOB			DATE
)


/* Create the following TRIGGER. It is an example of INSTEAD OF DML trigger */
CREATE TRIGGER TR_Customer_Staging
ON Customer_Staging
INSTEAD OF INSERT
AS
	BEGIN
		SET NOCOUNT ON

		INSERT INTO Customer_Major
		(
			CustomerID
			, CustomerName
			, DOB
		)
		SELECT CustomerID
			, CustomerName
			, DOB
		FROM inserted
		WHERE DATEDIFF(YY, DOB, GETDATE()) > 18

		INSERT INTO Customer_Minor
		(
			CustomerID
			, CustomerName
			, DOB
		)
		SELECT CustomerID
		, CustomerName
		, DOB
		FROM inserted
		WHERE DATEDIFF(YY, DOB, GETDATE()) <= 18
	END


/* Insert two records - one for major and another for minor. Post successful insert validate the data in the tables. */
INSERT INTO Customer_Staging (CustomerID, CustomerName, DOB)
VALUES (1, 'Shashank', '2009-07-23')
, (2, 'Santosh', '1986-01-10')

SELECT * FROM Customer_Staging
SELECT * FROM Customer_Minor
SELECT * FROM Customer_Major


/* Modifying a DML TRIGGER */
ALTER TRIGGER TR_Customer_Staging
ON Customer_Staging
INSTEAD OF INSERT
AS
	BEGIN
		SET NOCOUNT ON

		INSERT INTO Customer_Major
		(
			CustomerID
			, CustomerName
			, DOB
		)
		SELECT CustomerID
			, CustomerName
			, DOB
		FROM inserted
		WHERE DATEDIFF(YY, DOB, GETDATE()) > 18

		INSERT INTO Customer_Minor
		(
			CustomerID
			, CustomerName
			, DOB
		)
		SELECT CustomerID
		, CustomerName
		, DOB
		FROM inserted
		WHERE DATEDIFF(YY, DOB, GETDATE()) <= 18
	END


/* Dropping a DML TRIGGER */
DROP TRIGGER TR_Customer_Staging