/* Creating a view */
CREATE VIEW [dbo].[vw_Customer]
AS
	SELECT * FROM Customer;


/* Executing a view */
SELECT * FROM [dbo].[vw_Customer]


/* Modifying a view */
ALTER VIEW [dbo].[vw_Customer]
AS
SELECT * FROM Customer;


/* Dropping a view */
DROP VIEW [dbo].[vw_Customer]