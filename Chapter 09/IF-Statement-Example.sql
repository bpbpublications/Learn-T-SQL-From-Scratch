/* IF statement */
DECLARE @ReportType INT;
DECLARE @UniqueID INT;

SET @ReportType = 1;
SET @UniqueID = 1;

IF (@ReportType = 1)
	BEGIN
		SELECT * FROM Customer;
	END
ELSE IF (@ReportType = 2)
	BEGIN
		SELECT * FROM Product;
	END
ELSE IF (@ReportType = 3)
	BEGIN
		SELECT * FROM PurchaseOrder;
	END
ELSE
	BEGIN
		SELECT 'Incorrect Report Type';
	END