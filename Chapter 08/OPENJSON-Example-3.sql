DECLARE @json NVARCHAR(MAX)
SET @json = '[
				{
					"ProductID": 1,
					"ProductName": "Product 1"
				},
				{
					"ProductID": 2,
					"ProductName": "Product 2"
				},
				{
					"ProductID": 3,
					"ProductName": "Product 3"
				},
				{
					"ProductID": 4,
					"ProductName": "Product 4"
				},
				{
					"ProductID": 5,
					"ProductName": "Product 5"
				}
			]';

SELECT * FROM
OPENJSON (@json)
WITH
(
	ProductID INT '$.ProductID' ,
	ProductName VARCHAR(50) '$.ProductName'
);