/* @@ERROR without TRY...CATCH block */
SELECT 1/0;

IF @@ERROR <> 0

BEGIN
	PRINT 'Oops, an error!';
END

PRINT 'Line after error';

/* @@ERROR with TRY...CATCH block */
BEGIN TRY
	SELECT 1/0;

	IF @@ERROR <> 0
		BEGIN
			PRINT 'Oops, an error!';
		END

	PRINT 'Line after error';
END TRY

BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH

/* Error Handling with TRY...CATCH block */
DECLARE @MyTable TABLE
(
	ErrorNumber			INT
	, ErrorState		INT
	, ErrorSeverity		INT
	, ErrorLine			INT
	, ErrorMessage		VARCHAR(500)
	, ErrorProcedure	VARCHAR(100)
);

BEGIN TRY
	SELECT 1/0;
END TRY

BEGIN CATCH
	INSERT INTO @MyTable (ErrorNumber, ErrorState, ErrorSeverity, ErrorLine, ErrorProcedure, ErrorMessage)
	VALUES (ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE());

	SELECT * FROM @MyTable;
END CATCH