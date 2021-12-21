SELECT LEFT('abcdef', 2)

SELECT RIGHT('abcdef', 2)

SELECT SUBSTRING('abcdef', 3, 2)

SELECT REPLACE('adleebe', 'lee', 'o')
SELECT REPLACE('adleede', 'e', 'o')
SELECT REPLACE(REPLACE('adleebe', 'e', 'o'), 'l', 'z')

SELECT LEN('adleebe')

SELECT LTRIM(' adleebe')
SELECT RTRIM('adleebe ')

SELECT LOWER('ABCDEF')
SELECT UPPER('abcdef')

SELECT SPACE(5)

SELECT REPLICATE('ABC', 10)

SELECT REVERSE('EDCBA')

SELECT CHARINDEX('D', 'EDCBAD')
SELECT CHARINDEX('D', 'EDCBAD', 1)
SELECT CHARINDEX('D', 'EDCBAD', 3)
SELECT CHARINDEX('D', 'EDCBAD', 7)

SELECT QUOTENAME('Customer')

SELECT * FROM STRING_SPLIT('Apple|Ball|Cat', '|')

