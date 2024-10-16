USE [HotelProjekt]
GO

/****** Object:  StoredProcedure [dbo].[sp_AddArbeitZeit]    Script Date: 17.04.2023 13:24:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Description:	Ueberpruefung der Eingabeparameter und Eintragen der Daten in die Projektzuordnungstabelle
-- =============================================
CREATE OR ALTER PROCEDURE [dbo].[sp_AddArbeitZeit] 
	-- TODO: Add the parameters for the stored procedure here
	----------------------------------------------------
	@Datum date,
	@ReinigungID int,
	@Beruf int,
	@Position int,
	@Erfolg bit OUTPUT, -- geklappt oder nicht
	@Feedback VARCHAR(MAX) OUTPUT -- Fehlermeldungen etc.
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	--DECLARE @msg AS nvarchar(MAX); -- Fehlermeldung
	--DECLARE @CheckResult AS int;	
	DECLARE @PersonalFreiID int;
	-------------------------------------------------------------------	
	BEGIN TRY
		--Ueberpruefung, ob das Zimmer bereits gereinigt wurde
		IF (SELECT [Erledigt]
			FROM [dbo].[Reinigung]
			WHERE dbo.Reinigung.ReinigungID = @ReinigungID) = 1
			THROW 50001, 'Aufmerksamkeit! Das Zimmer wurde bereits gereinigt!',1;
		-- Die erste freie Reinigungskraft fuer das Datum auswaehlen
		SET @PersonalFreiID = (SELECT TOP 1 * FROM [dbo].[tf_PersonalFreiDatum](@Datum,@Beruf,@Position))
		IF @PersonalFreiID IS NOT NULL
		BEGIN
			-- INSERT INTO [dbo].[Arbeitzeit]
			-- Update Tabelle Reinigung.Erledigt
			UPDATE [dbo].[Reinigung]
			SET [Erledigt] = 1
			WHERE [dbo].[Reinigung].[ReinigungID] = @ReinigungID;
			--Pruefung, ob fuer diesen Mitarbeiter an einem bestimmten Datum ein Arbeitszeitdatensatz vorhanden ist
			IF ((SELECT COUNT(*) 
				FROM dbo.Arbeitzeit 
				WHERE (dbo.Arbeitzeit.Datum = @Datum)
				AND (dbo.Arbeitzeit.PersonalID = @PersonalFreiID)) = 0)
			BEGIN
					INSERT INTO [dbo].[Arbeitzeit]
					([ReinigungID],[PersonalID],[Datum],[Schicht])
					VALUES (@ReinigungID, @PersonalFreiID, @Datum, '0');
					----------------------
					SET @Erfolg = 1;
					SET @Feedback = 'Reinigung: ' + CONVERT(varchar,  @ReinigungID) + ' erledigt! ' 
					+' MitarbeiterID: '+CONVERT(varchar,  @PersonalFreiID)+ ',  Schicht: 0'+ ', Datum: ' + CONVERT(varchar,  @Datum) ;
			END
			ELSE
			BEGIN
					INSERT INTO [dbo].[Arbeitzeit]
					([ReinigungID],[PersonalID],[Datum],[Schicht])
					VALUES (@ReinigungID, @PersonalFreiID, @Datum, '1');
					----------------------
					SET @Erfolg = 1;
					SET @Feedback = 'Reinigung: ' + CONVERT(varchar,  @ReinigungID) + ' erledigt! ' 
					+' MitarbeiterID: '+CONVERT(varchar,  @PersonalFreiID)+ ',  Schicht: 1'+ ', Datum: ' + CONVERT(varchar,  @Datum) ;
			END
		END
		--wenn der Arbeitnehmer an diesem Tag nicht angetroffen wird, wird der naechste Tag genommen
		WHILE @PersonalFreiID IS NULL
		BEGIN
			SET @Datum=DATEADD(day,1,@Datum);
			SET @PersonalFreiID = (SELECT TOP 1 * FROM [dbo].[tf_PersonalFreiDatum](@Datum,@Beruf,@Position))
			IF @PersonalFreiID IS NOT NULL
			BEGIN
				-- INSERT INTO [dbo].[Arbeitzeit]
				-- Update Tabelle Reinigung.Erledigt
				UPDATE [dbo].[Reinigung]
				SET [Erledigt] = 1
				WHERE [dbo].[Reinigung].[ReinigungID] = @ReinigungID;
				--Pruefung, ob fuer diesen Mitarbeiter an einem bestimmten Datum ein Arbeitszeitdatensatz vorhanden ist
				IF ((SELECT COUNT(*) 
					FROM dbo.Arbeitzeit 
					WHERE (dbo.Arbeitzeit.Datum = @Datum)
					AND (dbo.Arbeitzeit.PersonalID = @PersonalFreiID)) = 0)
				BEGIN
						INSERT INTO [dbo].[Arbeitzeit]
						([ReinigungID],[PersonalID],[Datum],[Schicht])
						VALUES (@ReinigungID, @PersonalFreiID, @Datum, '0');
						----------------------
						SET @Erfolg = 1;
						SET @Feedback = 'Reinigung: ' + CONVERT(varchar,  @ReinigungID) + ' erledigt! ' 
						+' MitarbeiterID: '+CONVERT(varchar,  @PersonalFreiID)+ ',  Schicht: 0'+ ', Datum: ' + CONVERT(varchar,  @Datum) ;;
				END
				ELSE
				BEGIN
					INSERT INTO [dbo].[Arbeitzeit]
					([ReinigungID],[PersonalID],[Datum],[Schicht])
					VALUES (@ReinigungID, @PersonalFreiID, @Datum, '1');
					----------------------
					SET @Erfolg = 1;
					SET @Feedback = 'Reinigung: ' + CONVERT(varchar,  @ReinigungID) + ' erledigt! ' 
					+' MitarbeiterID: '+CONVERT(varchar,  @PersonalFreiID)+ ',  Schicht: 1'+ ', Datum: ' + CONVERT(varchar,  @Datum) ;;
				END
				BREAK;
			END
		END
		--IF @PersonalFreiID IS NULL 
		--	SET @Datum=DATEADD(day,1,@Datum);

	END TRY 
	BEGIN CATCH
		SET @Erfolg = 0; -- nicht geklappt--
		-- 	@Feedback text OUTPUT --Fehlermeldungen etc.
		SET @Feedback = 
			ERROR_MESSAGE() + ' Fehler Nr. '+ CONVERT(varchar, ERROR_NUMBER())
						+ ' Prozedur: '  + ERROR_PROCEDURE()
						+ ' Zeile Nr.: ' + CONVERT(varchar,  ERROR_LINE());
	END CATCH;    
END
GO