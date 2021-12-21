DECLARE @SchemaName SYSNAME
	, @TableName SYSNAME;

SELECT @SchemaName = 'dbo'
	, @TableName = 'Customer'

EXECUTE ('SELECT * FROM ' + @SchemaName + '.' + @TableName + ';')