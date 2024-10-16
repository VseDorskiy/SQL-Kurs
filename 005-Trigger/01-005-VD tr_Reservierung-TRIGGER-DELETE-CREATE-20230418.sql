USE [Hotelprojekt]
GO

/****** Object:  Trigger [dbo].[tr_Reservierung_DELETE]    Script Date: 18.04.2023 07:53:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Description:	Protokollierung der Loeschung von Reservierungsdaten (DELETE)
-- =============================================
CREATE OR ALTER TRIGGER [dbo].[tr_Reservierung_DELETE] 
   ON [dbo].[Reservierung]  
   FOR DELETE 
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    ------------- DECLARE -----------------
	
	--DECLARE @KundID AS int;
		
	--DECLARE @ZimmerNr AS tinyint;
	--DECLARE @ZimmID AS int;

	--DECLARE @GesuchtBegDatum AS date;
	--DECLARE @GesuchtEndDatum AS date;

	---------Ausfuellen der Variablen----------------
	--SELECT @KundID = KundenID FROM inserted;
	--SELECT @ZimmID = ZimmerID FROM inserted;
	
	--SELECT @GesuchtBegDatum = BeginDatum FROM inserted;
	--SELECT @GesuchtEndDatum = EndDatum FROM inserted;

	
	--SET @ZimmerNr =
	--	(SELECT Zimmernummer FROM dbo.Zimmer
	--	WHERE ZimmerID=@ZimmID
	--	);
	---------------Aufbau der Meldung -----------------------
	DECLARE @msg AS NVARCHAR(MAX);
	
	--SET @msg = CONCAT_WS(' ', 'OK! Zimmer_Nr',
	--					@ZimmerNr, 'ist fuer',
	--					@GesuchtBegDatum, '-',
	--					@GesuchtEndDatum,'erfolgreich gebucht');

	INSERT INTO [dbo].[Reservierungslog]
				(Mode, [ReservierungID],[ZimmerID],[KundenID],[GaesteAnzahl],
				[BeginDatum],[EndDatum],[ReservierungsPreis],[Meldung])
		SELECT   'D',  [ReservierungID],[ZimmerID],[KundenID],[GaesteAnzahl],
				[BeginDatum],[EndDatum],[ReservierungsPreis],@msg  
		FROM deleted;	
END
GO

ALTER TABLE [dbo].[Reservierung] ENABLE TRIGGER [tr_Reservierung_DELETE]
GO


