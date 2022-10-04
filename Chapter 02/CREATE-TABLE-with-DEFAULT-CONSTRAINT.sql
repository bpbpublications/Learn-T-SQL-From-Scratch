CREATE TABLE [Test]
(
	[ID]			INT
	, [Name]		VARCHAR(50)
	, [Gender]		VARCHAR(25)
	CONSTRAINT DF_Test_Gender DEFAULT('Do not wish to mention')
	, CONSTRAINT PK_Test_ID PRIMARY KEY ([ID])
)