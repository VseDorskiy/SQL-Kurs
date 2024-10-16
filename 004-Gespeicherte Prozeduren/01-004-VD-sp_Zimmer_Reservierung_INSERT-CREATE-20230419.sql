USE [Hotelprojekt]
GO

/****** Object:  StoredProcedure [dbo].[sp_Zimmer_Reservierung_INSERT]    Script Date: 19.04.2023 12:25:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Description:	Ueberpruefung der Buchungsdaten, Buchung durchfuehren oder ablehnen
-- =============================================
CREATE OR ALTER PROCEDURE [dbo].[sp_Zimmer_Reservierung_INSERT] 
 @KundID AS int,							-- KundenID
 @ZimmerID AS int,							-- Ausgewaehltes Zimmer
 --@GesuchtPlaetzeNummer AS tinyint,		-- Gesuchte Schlafplaetze
 --@GesuchtKost AS int,						-- Hoechstpreis fuer ein Zimmer, den der Kunde zu zahlen beriet ist
 --@GesuchtKlasse AS tinyint,				-- Mindestklasse des Zimmers, die der Kunde sucht

 @GesuchtBegDatum AS date,					-- Gesuchte BeginDatum
 @GesuchtEndDatum AS date,					-- Gesuchte EndDatum
 
 @ErfolgStatus AS bit OUTPUT,
 @Feedback AS NVARCHAR(MAX) OUTPUT
 AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @GesuchtPlaetzeNummer AS tinyint;
	DECLARE @GesuchtKost AS smallmoney=10000;
	DECLARE @GesuchtKlasse AS int;
	DECLARE @msg AS NVARCHAR(MAX);

	BEGIN TRY
		SELECT @GesuchtPlaetzeNummer=[dbo].[ZimmernPlaetze].[Platznummer] 
			FROM [dbo].[Zimmer] 
				INNER JOIN [dbo].[Zimmerzuordnung]
			ON 	[dbo].[Zimmerzuordnung].[ZimmerzuordnungID] = [dbo].[Zimmer].[ZimmerzuordnungID] 
				INNER JOIN [dbo].[ZimmernPlaetze]
			ON [dbo].[Zimmerzuordnung].[ZimmernPlaetzeID]=[dbo].[ZimmernPlaetze].ZimmernPlaetzeID
		WHERE [ZimmerID]=@ZimmerID;

		SELECT @GesuchtKlasse=[dbo].[Zimmerzuordnung].[ZimmernKlasseID]
			FROM [dbo].[Zimmer] 
				INNER JOIN [dbo].[Zimmerzuordnung]
			ON 	[dbo].[Zimmerzuordnung].[ZimmerzuordnungID] = [dbo].[Zimmer].[ZimmerzuordnungID]
		WHERE [ZimmerID]=@ZimmerID;

			--------------------------Ueberpruefung des Kunden------------------------
			DECLARE @KundAlt AS tinyint;
			DECLARE @GeburtsDatum AS date;
		
			SELECT @GeburtsDatum= [Geburtsdatum] FROM [dbo].[Kunden]
			WHERE [KundenID]=@KundID;
		
			IF [dbo].[sf_GetAge] (@GeburtsDatum)<18
				BEGIN
					DECLARE @KuVN AS NVARCHAR(50);
					DECLARE @KuNN AS NVARCHAR(50);

					SELECT @KuVN= [Vorname] FROM [dbo].[Kunden]
					WHERE [KundenID]=@KundID;

					SELECT @KuNN= [Nachname] FROM [dbo].[Kunden]
					WHERE [KundenID]=@KundID;

					SET @msg=CONCAT_WS(' ','Der Kunde', @KuVN, @KuNN, 
											'ist unter 18 Jahren. Die Reservierung ist leider nicht moeglich.');
					THROW 50001, @msg, 1;
				END

				---------------Datenueberpruefung BegDatum >= Heute, EndDatum>BegDatum-----------------

				DECLARE @Heute AS date;
				SET @Heute = GETDATE();

				IF (DATEDIFF(DAY, @Heute, @GesuchtBegDatum)<0) OR (@GesuchtBegDatum >= @GesuchtEndDatum)
				BEGIN
					SET @msg='Die Daten der Reservierung sind nicht richtig. Korregieren Sie bitte!';												
					THROW 50002, @msg, 1;
				END

				------------------ Ueberpruefung des Zimmers (Zimmernummer) --------------------------
		DECLARE @Zimm_ID AS int;
		DECLARE @ZimmNum AS int;

		SELECT @ZimmNum=[Zimmernummer] FROM [dbo].[Zimmer] 
		WHERE [ZimmerID]=@ZimmerID;

		SET @Zimm_ID =(
	
				SELECT Zimmer_ID FROM [dbo].[tf_Frei_Zimmer_Suchen]
			(	
			 @KundID,							-- KundenID 
			 @GesuchtPlaetzeNummer,				-- Gesuchte Schlafplaetze
			 @GesuchtKost,						-- Hoechstpreis fuer ein Zimmer, den der Kunde zu zahlen beriet ist
			 @GesuchtKlasse,					-- Mindestklasse des Zimmers, die der Kunde sucht

			 @GesuchtBegDatum,					-- Gesuchte BeginDatum
			 @GesuchtEndDatum					-- Gesuchte EndDatum
			) WHERE Zimmer_ID=@ZimmerID
		);

		IF @Zimm_ID IS NULL 
		BEGIN
			SET @msg=CONCAT_WS(' ','Das Zimmer', @ZimmNum,
									'ist leider nicht buchbar.',
									'Die Reservierung ist leider nicht moeglich.',
									'Waehlen Sie bitte ein anderes Zimmer');
			THROW 50003, @msg, 1;
		END

		DECLARE @Preis AS smallmoney;

		SET @Preis =(
	
				SELECT Preis_fuer_den_Kunden FROM [dbo].[tf_Frei_Zimmer_Suchen]
			(	
			 @KundID,							-- KundenID
			 @GesuchtPlaetzeNummer,				-- Gesuchte Schlafplaetze
			 @GesuchtKost,						-- Hoechstpreis fuer ein Zimmer, den der Kunde zu zahlen bereit ist
			 @GesuchtKlasse,					-- Mindestklasse des Zimmers, die der Kunde sucht

			 @GesuchtBegDatum,					-- Gesuchte BeginDatum
			 @GesuchtEndDatum					-- Gesuchte EndDatum
			) WHERE Zimmer_ID=@ZimmerID
		);

		------------- Neue Zeile in der Tabelle 'Reservierung' -------------------- 
		INSERT INTO [dbo].[Reservierung]
				([ZimmerID],[KundenID],[GaesteAnzahl],			[BeginDatum],	[EndDatum],			[ReservierungsPreis])
		VALUES   (@ZimmerID, @KundID,	@GesuchtPlaetzeNummer,	@GesuchtBegDatum,@GesuchtEndDatum,	@Preis);	

		SET @ErfolgStatus=1;
		SET @Feedback = CONCAT_WS(' ','Zimmer_Nr', @ZimmNum, 'ist fuer',
						@GesuchtBegDatum, '-', @GesuchtEndDatum, 'erfolgreich gebucht!');

		--------Neue Zeile in der Tabelle 'Reinigung' (Neuer Antrag auf Zimmerreinigung)------------------ 
		INSERT INTO [dbo].[Reinigung]
					([ZimmerID],[AnfrageDatum],		[Erledigt])
		VALUES		(@ZimmerID, @GesuchtEndDatum,	0);	

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


