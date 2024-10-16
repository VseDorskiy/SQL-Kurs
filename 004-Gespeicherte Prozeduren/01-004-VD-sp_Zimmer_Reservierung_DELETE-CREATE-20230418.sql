USE [Hotelprojekt]
GO

/****** Object:  StoredProcedure [dbo].[sp_Zimmer_Reservierung_DELETE]    Script Date: 18.04.2023 16:10:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Description:	Ueberpruefung und Loeschung von Reservierungsdaten (DELETE)
-- =============================================
CREATE OR ALTER   PROCEDURE [dbo].[sp_Zimmer_Reservierung_DELETE] 
 @Reservierung_ID AS int,

 @ErfolgStatus AS bit OUTPUT,
 @Feedback AS NVARCHAR(MAX) OUTPUT
 AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @BegDatum AS date;
	DECLARE @EndDatum AS date;
	DECLARE @msg AS NVARCHAR(MAX);

	BEGIN TRY
		DECLARE @Res_ID AS int;

		SELECT @Res_ID=[ReservierungID] FROM [dbo].[Reservierung]
		WHERE [ReservierungID]=@Reservierung_ID;
		
		IF @Res_ID IS NULL
		BEGIN
			SET @msg= CONCAT_WS(' ','Es gibt keine Reservierung Nr.', @Reservierung_ID, 
									'Korrigieren Sie bitte!');
					THROW 70001, @msg, 1;
		END

		SELECT @BegDatum=[BeginDatum] FROM [dbo].[Reservierung]
		WHERE [ReservierungID]=@Reservierung_ID;

		SELECT @EndDatum=[EndDatum] FROM [dbo].[Reservierung]
		WHERE [ReservierungID]=@Reservierung_ID;

		IF DATEDIFF(DAY, @BegDatum, GETDATE()) > 0
		BEGIN 
			SET @msg= CONCAT_WS(' ','Die Reservierung fing schon am', @BegDatum, 'an.',
									'Die Loeschung ist leider nicht moeglich!');
					THROW 70002, @msg, 1;
		END
		
		--------------------- Vorbereitung zum Entfernen----------------------------- 
		DECLARE @Zimmer_ID AS int;
		DECLARE @Reinigung_ID AS int;

		SELECT @Zimmer_ID=[ZimmerID] FROM [dbo].[Reservierung]
		WHERE [ReservierungID]=@Reservierung_ID;

		SELECT @Reinigung_ID=[ReinigungID] FROM [dbo].[Reinigung]
		WHERE [ZimmerID]=@Zimmer_ID AND [AnfrageDatum]=@EndDatum;

		------------ Entfernen der Zeile von der Tabelle 'Reservierung' -----------------
		DELETE FROM [dbo].[Reservierung]
		WHERE [ReservierungID]=@Reservierung_ID;

		SET @ErfolgStatus=1;
		SET @Feedback = CONCAT_WS(' ','Die Reservierung Nr.', @Reservierung_ID, 'fuer',
						@BegDatum, '-', @EndDatum, 'wurde geloescht.');

		--------Entfernen der Zeile von der Tabelle 'Reinigung' (Anfrage zur Reinigung des Zimmers)--------- 
		IF @Reinigung_ID IS NULL
		BEGIN
			SET @msg= @Feedback + ' '+ 
				CONCAT_WS(' ','Leider gibt es keine Reinigungsanfrage Nr.',@Reinigung_ID, 
								'fuer Reservierung Nr.', @Reservierung_ID 
								);
					THROW 70003, @msg, 1;
		END

		DELETE FROM [dbo].[Reinigung]
		WHERE @Reinigung_ID=[ReinigungID];

		SET @Feedback = CONCAT_WS(' ','Die Reservierung Nr.', @Reservierung_ID, 'fuer',
						@BegDatum, '-', @EndDatum, 'ist geloescht.',
						'Die Anfrage zur Reinigung ist auch geloescht.');

	END TRY
	BEGIN CATCH
		SET @ErfolgStatus = 0; -- nicht geklappt--
		-- 	@Feedback text OUTPUT --Fehlermeldungen etc.
		SET @Feedback = 
			ERROR_MESSAGE() + ' Fehler Nr. '+ CONVERT(varchar, ERROR_NUMBER())
						+ ' Prozedur: '  + ERROR_PROCEDURE()
						+ ' Zeile Nr.: ' + CONVERT(varchar,  ERROR_LINE());
	END CATCH; 
END
GO


