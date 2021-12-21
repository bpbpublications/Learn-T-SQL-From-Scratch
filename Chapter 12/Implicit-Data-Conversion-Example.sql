DECLARE @String1 VARCHAR(50)
	, @String2 CHAR(4);

SELECT @String1 = 'Year'
	, @String2 = 2020;

PRINT @String1 + ' ' + @String2 + ' is awesome!';