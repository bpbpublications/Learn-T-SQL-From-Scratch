SELECT ISNULL(NULL, 0);

DECLARE @Value VARCHAR(10);
SELECT ISNULL(@Value, '');

SELECT ISNULL((SELECT 1 + NULL), 0);
SELECT ISNULL((SELECT 1 + NULL), (SELECT 1 + 1));