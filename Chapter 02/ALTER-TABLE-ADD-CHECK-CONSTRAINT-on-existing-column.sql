ALTER TABLE [Test]
	ADD CONSTRAINT CK_Test_Gender CHECK( [Gender] IN ('Male', 'Female', 'Do not wish to mention'))