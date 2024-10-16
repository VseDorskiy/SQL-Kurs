USE [Hotelprojekt]
GO

/****** Object:  StoredProcedure [dbo].[sp_Zimmer_Reservierung_UPDATE_Preis]    Script Date: 18.04.2023 07:19:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Description:	Aenderung des Zimmerpreises mit dem Managerrabatt
-- =============================================
CREATE OR ALTER PROCEDURE [dbo].[sp_Zimmer_Reservierung_UPDATE_Preis] 
 @Reservierung_ID AS int,
 @Manager_Rabatt AS smallmoney,		-- Managerrabattgroesse
 @Max_Rabatt AS smallmoney,			-- Hoehstrabatt pro Zimmer auf den Standardpreis

 @ErfolgStatus AS bit OUTPUT,
 @Feedback AS NVARCHAR(MAX) OUTPUT
 AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @msg AS NVARCHAR(MAX);
	
	DECLARE @BegDatum AS date;
	DECLARE @Zimmer_ID AS int;

	BEGIN TRY
		DECLARE @Res_ID AS int;
		
		SELECT @Res_ID=[ReservierungID] FROM [dbo].[Reservierung]
		WHERE [ReservierungID]=@Reservierung_ID;

		SELECT @BegDatum=[BeginDatum] FROM [dbo].[Reservierung]
		WHERE [ReservierungID]=@Reservierung_ID;

		-----------------Ueberpruefung von ReservierungID--------------------------------
		IF @Res_ID IS NULL
		BEGIN
			SET @msg= CONCAT_WS(' ','Es gibt keine Reservierung Nr.', @Reservierung_ID, 
									'Korrigieren Sie bitte die Reservierungsnummer!');
					THROW 80001, @msg, 1;
		END

		--------------Ueberpruefung der Anfang der Reservierung--------------------------------
		IF DATEDIFF(DAY, @BegDatum, GETDATE()) > 0
		BEGIN 
			SET @msg= CONCAT_WS(' ','Die Reservierung fing schon am', @BegDatum, 'an.',
									'Die Aenderung ist leider nicht moeglich!');
					THROW 80002, @msg, 1;
		END

		-------------- Ueberpruefung der bereits vorgenommenen Preisaenderungen dieser Buchung----------------
		DECLARE @Reslog_ID AS int;
		
		SELECT TOP 1 @Reslog_ID = [ID] FROM [dbo].[Reservierungslog]
		WHERE [ReservierungID]=@Reservierung_ID AND [Mode]='U' AND ([ReservierungsPreis_alt] IS NOT NULL)
		ORDER BY [ID] DESC;

		IF @Reslog_ID IS NOT NULL
		BEGIN
			SET @msg= 'Die Ermaeßigung kann nur einmal gewaehrt werden!';
			THROW 80003, @msg, 1;		
		END

		--------------------------Wechseln des Preises --------------------------------------
		DECLARE @Standard_Preis AS smallmoney;
		DECLARE @Heutiger_Preis AS smallmoney;
		
		SELECT @Zimmer_ID=[ZimmerID] FROM [dbo].[Reservierung]
		WHERE [ReservierungID]=@Reservierung_ID;

		SELECT @Heutiger_Preis=[ReservierungsPreis] FROM [dbo].[Reservierung]
		WHERE [ReservierungID]=@Reservierung_ID;

		SELECT @Standard_Preis=[KostProNacht] FROM [dbo].[Zimmerzuordnung]
		INNER JOIN [dbo].[Zimmer]
		ON [dbo].[Zimmerzuordnung].[ZimmerzuordnungID]=[dbo].[Zimmer].[ZimmerzuordnungID]
		WHERE [ZimmerID]=@Zimmer_ID;
		
		DECLARE @Min_Preis AS smallmoney;
		DECLARE @Neuer_Preis AS smallmoney;

		SET @Min_Preis = @Standard_Preis * (1-@Max_Rabatt/100);
		SET @Neuer_Preis = @Heutiger_Preis*(1-@Manager_Rabatt/100);
		
		IF @Neuer_Preis< @Min_Preis SET @Neuer_Preis=@Min_Preis;
			
		---------------------Ueberpruefung des Preises--------------------------------
		IF @Neuer_Preis < = 0
		BEGIN 
			SET @msg= CONCAT_WS(' ','Der Zimmerpreis kann nicht kleiner als 0 sein.',
							'Korrigieren Sie bitte die Rabattgroesse!');
					THROW 80004, @msg, 1;
		END

		------------------- Update des ReservierungsPreises-----------------------
		UPDATE [dbo].[Reservierung]
		SET [ReservierungsPreis]=@Neuer_Preis
		WHERE [ReservierungID]=@Reservierung_ID;

		SET @ErfolgStatus=1;
		SET @Feedback = CONCAT_WS(' ','Der Reservierungspreis fuer Buchung Nr.',
						@Reservierung_ID, 'ist erfolgreich geaendert!');
				
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


