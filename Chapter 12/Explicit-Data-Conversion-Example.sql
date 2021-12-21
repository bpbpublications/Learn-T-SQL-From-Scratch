/* Explicit Data Conversion */
DECLARE @String VARCHAR(50)
	, @INT INT;

SELECT @String = 'Year'
	, @INT = 2020;

PRINT @String + ' ' + CAST(@INT AS VARCHAR(10)) + ' is awesome!';
PRINT @String + ' ' + CONVERT(VARCHAR(10), @INT) + ' is awesome!';

/* PARSE */
SELECT PARSE('�256,56' AS MONEY USING 'fr-FR')
SELECT PARSE('�256,56' AS MONEY USING 'nn-NO')

/* PARSE, CAST, and CONVERT */
SELECT PARSE('�256,56' AS MONEY USING 'nn-NO')
SELECT CAST('�256,56' AS INT)
SELECT CONVERT(INT, '�256,56')

/* TRY_PARSE, TRY_CAST, and TRY_CONVERT */
SELECT TRY_PARSE('�256,56' AS MONEY USING 'nn-NO')
SELECT TRY_CAST('�256,56' AS INT)
SELECT TRY_CONVERT(INT, '�256,56')