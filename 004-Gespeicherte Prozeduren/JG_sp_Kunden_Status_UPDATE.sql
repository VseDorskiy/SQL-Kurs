USE [Hotelprojekt]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Description:	<Update des Kundenstatus>
-- =============================================
CREATE OR ALTER PROCEDURE sp_Kunden_Status_UPDATE
	-- Add the parameters for the stored procedure here
	  @KundenID int,
	  
	  @Feedback AS NVARCHAR(MAX) OUTPUT
AS
BEGIN

	SET NOCOUNT ON;

	DECLARE @ReservAnzahl AS int
	
	DECLARE @Status AS int

	DECLARE @StatusName AS nvarchar(30)
	
	DECLARE @StatusWar AS int

	BEGIN TRY 
					SELECT 
					@ReservAnzahl = COUNT(dbo.Kunden.KundenID) 
					FROM dbo.Reservierung INNER JOIN
					dbo.Kunden ON dbo.Reservierung.KundenID = @KundenID INNER JOIN
					dbo.Status ON dbo.Kunden.StatusID = dbo.Status.StatusID
					WHERE dbo.Kunden.KundenID = @KundenID	

					IF @ReservAnzahl IS NULL
					SET @ReservAnzahl = 0
						
					SELECT  
					@Status = dbo.Kunden.StatusID
					FROM dbo.Kunden, dbo.Reservierung
					WHERE dbo.Kunden.KundenID = @KundenID 

					SELECT
					@StatusName = dbo.Status.Status
					FROM            
					dbo.Kunden INNER JOIN
                    dbo.Status ON dbo.Kunden.StatusID = dbo.Status.StatusID
					WHERE dbo.Kunden.KundenID = @KundenID	

								
					--Status = 1--
					IF @Status = 1 AND @ReservAnzahl BETWEEN 1 AND 2 
						BEGIN
							SET @Feedback = 'Status hat sich NICHT geaendert. Der Kunde hat den Status ' + 
							CONVERT(varchar,  @StatusName) + '. ' + 'Die Anzahl der Reservierungen: ' + CONVERT(varchar,  @ReservAnzahl);
							--THROW 50001, @Feedback, 1;
						END

					IF @Status = 1 AND @ReservAnzahl BETWEEN 3 AND 7 
						BEGIN							
							SET @StatusWar = @Status
							UPDATE dbo.Kunden SET dbo.Kunden.StatusID = 2
							WHERE dbo.Kunden.KundenID = @KundenID
							SET @Feedback = 'Status hat sich geaendert. Vorheriger Status war ' + CONVERT(varchar,  @StatusWar) + '. ' + 'Der Kunde hat den neuen Status: ' + 
							CONVERT(varchar,  @StatusName) + '. ' + 'Die Anzahl der Reservierungen: ' + CONVERT(varchar,  @ReservAnzahl);
							--THROW 50001, @Feedback, 1;
						END

					IF @Status = 1 AND @ReservAnzahl >=8 
						BEGIN
							SET @StatusWar = @Status
							UPDATE dbo.Kunden SET dbo.Kunden.StatusID = 3
							WHERE dbo.Kunden.KundenID = @KundenID
							SET @Feedback = 'Status hat sich geaendert. Vorheriger Status war ' + CONVERT(varchar,  @StatusWar) + '. ' + 'Der Kunde hat den neuen Status: ' + 
							CONVERT(varchar,  @StatusName) + '. ' + 'Die Anzahl der Reservierungen: ' + CONVERT(varchar,  @ReservAnzahl);
							--THROW 50001, @Feedback, 1;
						END

					----Status = 2--
					--IF @Status = 2 AND @ReservAnzahl BETWEEN 1 AND 2  
					--	BEGIN
					--		UPDATE dbo.Kunden SET dbo.Kunden.StatusID = 1
					--		WHERE dbo.Kunden.KundenID = @KundenID
					--		SET @Feedback = 'Status hat sich ge�ndert, Status = Stndart';
					--		--THROW 50002, @Feedback, 1;
					--	END

					IF @Status = 2 AND @ReservAnzahl BETWEEN 3 AND 7
						BEGIN
							SET @Feedback = 'Status hat sich NICHT geaendert. Der Kunde hat den Status ' + 
							CONVERT(varchar,  @StatusName) + '. ' + 'Die Anzahl der Reservierungen: ' + CONVERT(varchar,  @ReservAnzahl);
							--THROW 50002, @Feedback, 1;
						END

					IF @Status = 2 AND @ReservAnzahl >=8 
						BEGIN
							SET @StatusWar = @Status
							UPDATE dbo.Kunden SET dbo.Kunden.StatusID = 3
							WHERE dbo.Kunden.KundenID = @KundenID
							SET @Feedback = 'Status hat sich geaendert. Vorheriger Status war ' + CONVERT(varchar,  @StatusWar) + '. ' + 'Der Kunde hat den neuen Status: ' + 
							CONVERT(varchar,  @StatusName) + '. ' + 'Die Anzahl der Reservierungen: ' + CONVERT(varchar,  @ReservAnzahl);
							--THROW 50002, @Feedback, 1;
						END
					
					----Status = 3--
					IF @Status = 3 AND @ReservAnzahl BETWEEN 1 AND 2 
						BEGIN
							SET @Feedback = 'Status hat sich NICHT geaendert. Der Kunde hat den Status ' + 
							CONVERT(varchar,  @StatusName) + '. ' + 'Die Anzahl der Reservierungen: ' + CONVERT(varchar,  @ReservAnzahl);
							--THROW 50003, @Feedback, 1;
						END

					IF @Status = 3 AND @ReservAnzahl BETWEEN 3 AND 7 
						BEGIN
							SET @Feedback = 'Status hat sich NICHT geaendert. Der Kunde hat den Status ' + 
							CONVERT(varchar,  @StatusName) + '. ' + 'Die Anzahl der Reservierungen: ' + CONVERT(varchar,  @ReservAnzahl);
							--THROW 50003, @Feedback, 1;
						END

					IF @Status = 3 AND @ReservAnzahl >=8 
						BEGIN
							SET @Feedback = 'Status hat sich NICHT geaendert. Der Kunde hat den Status ' + 
							CONVERT(varchar,  @StatusName) + '. ' + 'Die Anzahl der Reservierungen: ' + CONVERT(varchar,  @ReservAnzahl);
							--THROW 50003, @Feedback, 1;
						END
					
					--Status = null--
					IF @Status  IS NULL
						BEGIN
							SET @Feedback = 'Status hat sich nicht geaendert! Kein KundeID = ' +  
							CONVERT(varchar,  @KundenID) + ', ' + 'Status: NULL';
							--THROW 50003, @Feedback, 1;
						END

					--Reservierung = null--

					--IF @ReservAnzahl = 0 AND @Status = 1 OR @Status = 2 OR @Status = 3
					--	BEGIN
					--		SET @Feedback = 'Status hat sich nicht geaendert! Kunde hat keine Reservierungen';
					--		--THROW 50001, @Feedback, 1;
					--	END

					IF @Status = 1 AND @ReservAnzahl = 0
						BEGIN
							SET @Feedback = 'Der Kunde hat den Status ' + CONVERT(varchar,  @StatusName) + '. ' + 'Kunde hat keine Reservierungen';
							--THROW 50001, @Feedback, 1;
						END

					IF @Status = 2 AND @ReservAnzahl = 0
						BEGIN
							SET @Feedback = 'Der Kunde hat den Status ' + CONVERT(varchar,  @StatusName) + '. ' + 'Kunde hat keine Reservierungen';
							--THROW 50001, @Feedback, 1;
						END
	
					IF @Status = 3 AND @ReservAnzahl = 0
						BEGIN
							SET @Feedback = 'Der Kunde hat den Status ' + CONVERT(varchar,  @StatusName) + '. ' + 'Kunde hat keine Reservierungen';
							--THROW 50001, @Feedback, 1;
						END
		
				

														
	END TRY

	BEGIN CATCH
			SET @Feedback =
			ERROR_MESSAGE() + ' Fehler Nr.: '+ CONVERT(varchar, ERROR_NUMBER()) + ', '+ ' Prozedur: '  + ERROR_PROCEDURE() + ', '+ ' Zeile Nr.: ' + CONVERT(varchar,  ERROR_LINE());
			THROW 50004, @Feedback, 1;
	END CATCH;
   
END
GO
