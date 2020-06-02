-- Test1 inserts and deletes 20 000 rows into the given table
CREATE OR ALTER PROCEDURE my_runTest1 @tableID INT, @testID INT, @testRunID INT
AS
	-- Determine the name of the table in which we'll insert 20000 rows
	DECLARE @tableName VARCHAR(30) = (SELECT Tables.Name FROM Tables WHERE Tables.TableID = @tableID)

	-- Number of rows that will be inserted/deleted
	DECLARE @nrOfRows INT = (SELECT TestTables.NoOfRows FROM TestTables WHERE TestTables.TableID = @tableID AND TestTables.TestID = @testID)

	-- The first row
	DECLARE @startingPosition INT = (SELECT TestTables.Position FROM TestTables WHERE TestTables.TableID = @tableID AND TestTables.TestID = @testID)

	-- Current position is initilized with starting position
	DECLARE @position INT = @startingPosition

	PRINT '20 000 rows will be inserted in table ' + @tableName + '.'
	DECLARE @templateRunTestSQL VARCHAR(100)

	-- Set the template row
	IF @tableID = 1 -- table Singers
		BEGIN
			SET @templateRunTestSQL = 'INSERT INTO [tablename] VALUES([position],''Singer_name'',''Singer_genre'')'
		END

	IF @tableID = 2 -- table Albums
		BEGIN
			SET @templateRunTestSQL = 'INSERT INTO [tablename] VALUES([position],1,''Album_name'',10)'
		END

    IF @tableID = 3 -- table Events
		BEGIN
			SET @templateRunTestSQL = 'INSERT INTO [tablename] VALUES([position],1,1,10,''01/01/2010'')'
		END

	-- Make the template specific for the given table
	SET @templateRunTestSQL = REPLACE(@templateRunTestSQL, '[tablename]', @tableName)
	PRINT 'Template for add in table ' + @tableName + ' is: ''' + @templateRunTestSQL +'''.'

	-- Start inserting
	WHILE @position < @startingPosition + @nrOfRows
		BEGIN
			DECLARE @runTestSQL NVARCHAR(100 )
			SET @runTestSQL = REPLACE(@templateRunTestSQL, '[position]', CAST(@position AS VARCHAR(5)))
			PRINT @runTestSQL
			exec sp_executesql @runTestSQL
			SET @position = @position + 1
		END

	-- Execute view
	IF @tableID = 1 -- table Singers
		BEGIN
			INSERT INTO TestRunViews VALUES(@testRunID,1,GETDATE(),GETDATE(),null)
			SELECT *
			FROM my_viewAllSingers
			UPDATE TestRunViews SET EndAt = GETDATE() WHERE TestRunID = @testRunID
			UPDATE TestRunViews SET TimeOfExecution = dbo.computeDATEDIFF(TestRunViews.StartAt,TestRunViews.EndAt) WHERE TestRunID = @testRunID
		END

	IF @tableID = 2 -- table Albums
		BEGIN
			INSERT INTO TestRunViews VALUES(@testRunID,2,GETDATE(),GETDATE(),null)
			SELECT *
			FROM my_viewAllAlbums
			UPDATE TestRunViews SET EndAt = GETDATE() WHERE TestRunID = @testRunID
			UPDATE TestRunViews SET TimeOfExecution = dbo.computeDATEDIFF(TestRunViews.StartAt,TestRunViews.EndAt) WHERE TestRunID = @testRunID
		END

    IF @tableID = 3 -- table Events
		BEGIN
			INSERT INTO TestRunViews VALUES(@testRunID,3,GETDATE(),GETDATE(),null)
			SELECT *
			FROM my_viewAllEvents
			UPDATE TestRunViews SET EndAt = GETDATE() WHERE TestRunID = @testRunID
			UPDATE TestRunViews SET TimeOfExecution = dbo.computeDATEDIFF(TestRunViews.StartAt,TestRunViews.EndAt) WHERE TestRunID = @testRunID
		END


	-- Set the template row
	IF @tableID = 1 -- table Singers
		BEGIN
			SET @templateRunTestSQL = 'DELETE FROM [tablename] WHERE [tablename].sid = [position]'
		END

	IF @tableID = 2 -- table Albums
		BEGIN
			SET @templateRunTestSQL = 'DELETE FROM [tablename] WHERE [tablename].aid = [position]'
		END

    IF @tableID = 3 -- table Events
		BEGIN
			SET @templateRunTestSQL = 'DELETE FROM [tablename] WHERE [tablename].eid = [position]'
		END

	-- Make the template specific for the given table
	SET @templateRunTestSQL = REPLACE(@templateRunTestSQL, '[tablename]', @tableName)
	PRINT 'Template for deleting in table ' + @tableName + ' is: ''' + @templateRunTestSQL +'''.'

	SET @position = @startingPosition
	WHILE @position < @startingPosition + @nrOfRows
		BEGIN
			DECLARE @runTestDeleteSQL NVARCHAR(100)
			SET @runTestDeleteSQL = REPLACE(@templateRunTestSQL, '[position]', CAST(@position AS VARCHAR(5)))
			PRINT @runTestDeleteSQL
			exec sp_executesql @runTestDeleteSQL
			SET @position = @position + 1
		END
GO

EXEC my_runTest1 @tableID = 1, @testID = 1