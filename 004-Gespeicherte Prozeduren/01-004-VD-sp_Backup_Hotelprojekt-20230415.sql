USE [Hotelprojekt]
GO

/****** Object:  StoredProcedure [dbo].[sp_Backup_HotelProjekt]    Script Date: 19.04.2023 12:48:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Description:	Backup des HotelProjekts
-- =============================================
CREATE OR ALTER PROCEDURE [dbo].[sp_Backup_HotelProjekt]
	@Pfad nvarchar(256)='C:\SQL-Kurs\DB\Backup\'	
	--@Feedback nvarchar(MAX) OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	BEGIN TRY
		DECLARE @Feedback nvarchar(MAX);
		DECLARE @backupFile NVARCHAR(MAX); -- file name
		SET @backupFile = @Pfad + 
						  'HotelProjekt-' + [dbo].[sf_Zeitstempel]() + '.bak';

		DECLARE @t TABLE (FileExists int, FileIsDir int, ParentDirExists int);
		INSERT INTO @t EXEC master.dbo.xp_fileexist @Pfad;

		IF ((SELECT FileIsDir FROM @t) = 0 OR (SELECT ParentDirExists FROM @t) =0)
		BEGIN
		-- Ordner existiert nicht
			PRINT 'Pfad existiert nicht.';

			EXEC master.sys.xp_create_subdir @Pfad;

			PRINT 'Der Pfad '+ @Pfad + ' wurde erstellt.'+ CHAR(10); 
		END
	
		BACKUP DATABASE [HotelProjekt] TO DISK = @backupFile;
		SET @Feedback = CHAR(10) + 'Alles OK!';
		PRINT @Feedback;
	END TRY
	BEGIN CATCH	
		----------------------------------
		SET @Feedback = ERROR_MESSAGE() + CHAR(10)-- Zeilenumbruch
						+ 'Fehler Nr. ' + CONVERT(varchar, ERROR_NUMBER()) + CHAR(10)
						+ 'Prozedur: '  + ERROR_PROCEDURE() + CHAR(10)
						+ 'Zeile Nr.: ' + CONVERT(varchar,  ERROR_LINE());
		PRINT @Feedback;

	END CATCH
END
GO


