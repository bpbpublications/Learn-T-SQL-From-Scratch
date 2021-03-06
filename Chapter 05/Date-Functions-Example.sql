SELECT GETDATE()

SELECT ISDATE('2020-12-25')
SELECT ISDATE('2020-12-25 20:02:16.223')
SELECT ISDATE(999999)
SELECT ISDATE('Being Human')

SELECT DATEPART(DAY, '2020-12-25 20:02:16.223')
SELECT DATEPART(MONTH, '2020-12-25 20:02:16.223')
SELECT DATEPART(YEAR, '2020-12-25 20:02:16.223')
SELECT DATEPART(HOUR, '2020-12-25 20:02:16.223')
SELECT DATEPART(MINUTE, '2020-12-25 20:02:16.223')
SELECT DATEPART(SECOND, '2020-12-25 20:02:16.223')
SELECT DATEPART(MILLISECOND, '2020-12-25 20:02:16.223')

SELECT DATEPART(DAY, '2020-12-25')
SELECT DATEPART(MONTH, '2020-12-25')
SELECT DATEPART(YEAR, '2020-12-25')
SELECT DATEPART(HOUR, '2020-12-25')
SELECT DATEPART(MINUTE, '2020-12-25')
SELECT DATEPART(SECOND, '2020-12-25')
SELECT DATEPART(MILLISECOND, '2020-12-25')

SELECT DATEADD(DAY, 1, '2020-12-25')
SELECT DATEADD(MONTH, 1, '2020-12-25')
SELECT DATEADD(YEAR, 1, '2020-12-25')
SELECT DATEADD(HOUR, 1, '2020-12-25')
SELECT DATEADD(MINUTE, 10, '2020-12-25')
SELECT DATEADD(SECOND, 50, '2020-12-25')
SELECT DATEADD(MILLISECOND, 100, '2020-12-25')

SELECT DATEADD(DAY, -1, '2020-12-25')
SELECT DATEADD(MONTH, -1, '2020-12-25')
SELECT DATEADD(YEAR, -1, '2020-12-25')
SELECT DATEADD(HOUR, -1, '2020-12-25')
SELECT DATEADD(MINUTE, -10, '2020-12-25')
SELECT DATEADD(SECOND, -50, '2020-12-25')
SELECT DATEADD(MILLISECOND, -100, '2020-12-25')

SELECT DATEDIFF(DAY, '2020-12-20', '2020-12-25')
SELECT DATEDIFF(MONTH, '2020-10-25', '2020-12-25')
SELECT DATEDIFF(YEAR, '2010-12-25', '2020-12-25')