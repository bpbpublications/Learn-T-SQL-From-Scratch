CREATE TABLE #MyTable
(
	[ID]		INT NOT NULL IDENTITY(1, 1)
	, [Name]	VARCHAR(50)
);

-- Default value of IDENTITY_INSERT is OFF.
SET IDENTITY_INSERT #MyTable OFF;
INSERT INTO #MyTable ([ID], [Name]) VALUES (3, 'C'), (4, 'D');

SELECT * FROM #MyTable;