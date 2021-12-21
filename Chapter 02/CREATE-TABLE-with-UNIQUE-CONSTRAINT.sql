CREATE TABLE [Test]
(
	[ID]		INT
	, [Name]	VARCHAR(50)
	, CONSTRAINT UQ_Test_ID UNIQUE ([ID])
)